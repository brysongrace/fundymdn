#MixSIAR Code - 2016

library(MixSIAR)
library(R2WinBUGS)
library(splancs)
library(ggplot2)

#Upper Salmon
#Load the consumer mixture data
mix <- load_mix_data(filename = "UScons16FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region", "Time"), 
                     fac_random = c(FALSE, FALSE), 
                     fac_nested = c(FALSE, FALSE),
                     cont_effects = NULL)


#Load the source data
source <- load_source_data(filename = "USsource15FINAL.csv",
                           source_factors = c("Region"),
                           conc_dep = FALSE, 
                           data_type = "means", 
                           mix)

#Load the discrimination factors
discr <- load_discr_data(filename = "tef16.csv", mix)


# Make an isospace plot
plot_data <- plot_data(filename="isospace_plotUS16", plot_save_pdf=T, plot_save_png=F, mix,source,discr)


#Calculate convex hull area
calc_area(source=source, mix=mix, discr=discr)

#Make priors
plot_prior(alpha.prior=1,source)


#Write JAGS file
model_filename <- "MixSIAR_model.txt"   # Name of the JAGS model file
resid_err <- TRUE
process_err <- TRUE
write_JAGS_model(model_filename, resid_err, process_err, mix, source)

#Run Normal
run <- list(chainLength=100000, burn=50000, thin=50, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="normal", mix, source, discr, model_filename, 
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

#Make box plots - USR
#Order x labels
Month <- as.character(x=c("August", "November"))
Month <- factor(Month, levels=c("August", "November"))

#US downstream
DF <- data.frame(x=c("Month"), min=c(0.161, 0.372), low=c(0.185, 0.393), mid=c(0.201, 0.407), top=c(0.216, 0.421), max=c(0.238, 0.441))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))


#US upstream
DF <- data.frame(x=c("Month"), min=c(0.018, 0.049), low=c(0.030, 0.081), mid=c(0.039, 0.102), top=c(0.050, 0.124), max=c(0.067, 0.155))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))






#Point Wolfe
#Load the consumer mixture data
mix <- load_mix_data(filename = "PWcons16FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region", "Time"), 
                     fac_random = c(FALSE, FALSE), 
                     fac_nested = c(FALSE, FALSE),
                     cont_effects = NULL)


#Load the source data
source <- load_source_data(filename = "PWsource16FINAL.csv",
                           source_factors = c("Region"),
                           conc_dep = FALSE, 
                           data_type = "means", 
                           mix)

#Load the discrimination factors
discr <- load_discr_data(filename = "tef16.csv", mix)

# Make an isospace plot
plot_data <- plot_data(filename="isospace_plotPW16", plot_save_pdf=T, plot_save_png=F, mix,source,discr)



#Calculate convex hull area
calc_area(source=source, mix=mix, discr=discr)

#Make priors
plot_prior(alpha.prior=1,source)


#Write JAGS file
model_filename <- "MixSIAR_model.txt"   # Name of the JAGS model file
resid_err <- TRUE
process_err <- TRUE
write_JAGS_model(model_filename, resid_err, process_err, mix, source)

#Run Long
run <- list(chainLength=300000, burn=200000, thin=100, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="long", mix, source, discr, model_filename, 
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

#Make box plots - PWR
#Order x labels
Month <- as.character(x=c("August", "November"))
Month <- factor(Month, levels=c("August", "November"))

#PW downstream
DF <- data.frame(x=c("Month"), min=c(0.245, 0.185), low=c(0.361, 0.297), mid=c(0.392, 0.332), top=c(0.420, 0.363), max=c(0.465, 0.417))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))


#PW upstream
DF <- data.frame(x=c("Month"), min=c(0.306, 0.251), low=c(0.379, 0.318), mid=c(0.403, 0.342), top=c(0.426, 0.363), max=c(0.460, 0.401))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))






