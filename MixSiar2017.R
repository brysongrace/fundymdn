#MixSIAR - 2017

library(MixSIAR)
library(R2WinBUGS)
library(splancs)
library(ggplot2)

getwd()
setwd("/Users/gracebryson/Desktop/CRI Stable Isotopes/Demo 4b Mixsiar")
list.files()

#Upper Salmon
#Load the consumer mixture data
mix <- load_mix_data(filename = "UScons17FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region", "Time"), 
                     fac_random = c(FALSE, FALSE), 
                     fac_nested = c(FALSE, TRUE),
                     cont_effects = NULL)


#Load the source data
source <- load_source_data(filename = "USsource17FINAL.csv",
                           source_factors = c("Region"),
                           conc_dep = FALSE, 
                           data_type = "means", 
                           mix)

#Load the discrimination factors
discr <- load_discr_data(filename = "tef16.csv", mix)


# Make an isospace plot
plot_data <- plot_data(filename="isospace_plot", plot_save_pdf=F, plot_save_png=F, mix,source,discr)


#Calculate convex hull area
calc_area(source=source, mix=mix, discr=discr)

#Make priors
plot_prior(alpha.prior=1,source)


#Write JAGS file
model_filename <- "MixSIAR_model.txt"   # Name of the JAGS model file
resid_err <- TRUE
process_err <- TRUE
write_JAGS_model(model_filename, resid_err, process_err, mix, source)

#Run test
run <- list(chainLength=1000, burn=500, thin=1, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="test", mix, source, discr, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Get outputs
output_options <- list(summary_save = TRUE,
                       summary_name = "summary_statistics",
                       sup_post = FALSE,
                       plot_post_save_pdf = TRUE,
                       plot_post_name = "posterior_density",
                       sup_pairs = FALSE,
                       plot_pairs_save_pdf = TRUE,
                       plot_pairs_name = "pairs_plot",
                       sup_xy = TRUE,
                       plot_xy_save_pdf = FALSE,
                       plot_xy_name = "xy_plot",
                       gelman = TRUE,
                       heidel = FALSE,
                       geweke = TRUE,
                       diag_save = TRUE,
                       diag_name = "diagnostics",
                       indiv_effect = FALSE,
                       plot_post_save_png = FALSE,
                       plot_pairs_save_png = FALSE,
                       plot_xy_save_png = FALSE)

output_JAGS(jags.1, mix, source, output_options)









#Point Wolfe
library(MixSIAR)
library(R2WinBUGS)
library(splancs)
library(ggplot2)

list.files()

#Load the consumer mixture data
mixPW <- load_mix_data(filename = "PWcons17FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region", "Time"), 
                     fac_random = c(FALSE, FALSE), 
                     fac_nested = c(FALSE, TRUE),
                     cont_effects = NULL)


#Load the source data
sourcePW <- load_source_data(filename = "PWsource17FINAL.csv",
                           source_factors = c("Region"),
                           conc_dep = FALSE, 
                           data_type = "means", 
                           mixPW)

#Load the discrimination factors
discrPW <- load_discr_data(filename = "tef16.csv", mixPW)


# Make an isospace plot
plot_data(filename="isospacePW_plot", plot_save_pdf=F, plot_save_png=F, mixPW,sourcePW,discrPW) 


#Calculate convex hull area
calc_area(source=sourcePW, mix=mixPW, discr=discrPW)

#Make priors
plot_prior(alpha.prior=1,source)


#Write JAGS file
model_filename <- "MixSIAR_modelPW.txt"   # Name of the JAGS model file
resid_err <- TRUE
process_err <- TRUE
write_JAGS_model(model_filename, resid_err, process_err, mixPW, sourcePW)

#Run test
run <- list(chainLength=1000, burn=500, thin=1, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="test", mixPW, sourcePW, discrPW, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Get outputs
output_options <- list(summary_save = TRUE,
                       summary_name = "summary_statistics",
                       sup_post = FALSE,
                       plot_post_save_pdf = TRUE,
                       plot_post_name = "posterior_density",
                       sup_pairs = FALSE,
                       plot_pairs_save_pdf = TRUE,
                       plot_pairs_name = "pairs_plot",
                       sup_xy = TRUE,
                       plot_xy_save_pdf = FALSE,
                       plot_xy_name = "xy_plot",
                       gelman = TRUE,
                       heidel = FALSE,
                       geweke = TRUE,
                       diag_save = TRUE,
                       diag_name = "diagnostics",
                       indiv_effect = FALSE,
                       plot_post_save_png = FALSE,
                       plot_pairs_save_png = FALSE,
                       plot_xy_save_png = FALSE)

output_JAGS(jags.1, mixPW, sourcePW, output_options)

#Run NORMAL MCMC
run <- list(chainLength=100000, burn=50000, thin=50, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="normal", mixPW, sourcePW, discrPW, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Get outputs
output_options <- list(summary_save = TRUE,
                       summary_name = "summary_statistics",
                       sup_post = FALSE,
                       plot_post_save_pdf = TRUE,
                       plot_post_name = "posterior_density",
                       sup_pairs = FALSE,
                       plot_pairs_save_pdf = TRUE,
                       plot_pairs_name = "pairs_plot",
                       sup_xy = TRUE,
                       plot_xy_save_pdf = FALSE,
                       plot_xy_name = "xy_plot",
                       gelman = TRUE,
                       heidel = FALSE,
                       geweke = TRUE,
                       diag_save = TRUE,
                       diag_name = "diagnostics",
                       indiv_effect = FALSE,
                       plot_post_save_png = FALSE,
                       plot_pairs_save_png = FALSE,
                       plot_xy_save_png = FALSE)

output_JAGS(jags.1, mixPW, sourcePW, output_options)
