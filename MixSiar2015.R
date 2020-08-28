#MixSIAR Code - 2015

library(MixSIAR)
library(R2WinBUGS)
library(splancs)
library(ggplot2)

#Upper Salmon
#Load the consumer mixture data
mix <- load_mix_data(filename = "UScons15FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region","Time"), 
                     fac_random = c(FALSE,FALSE), 
                     fac_nested = c(FALSE,FALSE),
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
plot_data(filename="isospace_plot_US15final", plot_save_pdf=T, plot_save_png=F, mix,source,discr)
plot_data

g = plot_data(filename="isospace_plot", plot_save_pdf=F, plot_save_png=F, mix,source,discr)

png("my_new_plot.png", width=7, height=7, units="in", res=300)
g + theme(panel.border = element_blank(), panel.background = element_blank(),
          panel.grid.major = element_blank(), panel.grid.minor = element_blank(), 
          axis.line = element_line(colour = "black"),
          axis.title=element_text(size=20), axis.text=element_text(size=14),
          legend.text=element_text(size=12), legend.title=element_text(size=14))
dev.off()

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
Month <- as.character(x=c("September", "December"))
Month <- factor(Month, levels=c("September", "December"))

#US downstream
DF <- data.frame(x=c("Month"), min=c(0.062, 0.200), low=c(0.084, 0.222), mid=c(0.098, 0.234), top=c(0.112, 0.248), max=c(0.132, 0.268))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))


#US upstream
DF<- data.frame(x=c("Month"), min=c(0.006, 0.017), low=c(0.012, 0.037), mid=c(0.019, 0.053), top=c(0.026, 0.069), max=c(0.038, 0.096))

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
mix <- load_mix_data(filename = "PWcons15FINAL.csv", 
                     iso_names = c("d13C","d15N"), 
                     factors   = c("Region", "Time"), 
                     fac_random = c(FALSE, FALSE), 
                     fac_nested = c(FALSE, FALSE),
                     cont_effects = NULL)


#Load the source data
source <- load_source_data(filename = "PWsource15FINAL.csv",
                           source_factors = c("Region"),
                           conc_dep = FALSE, 
                           data_type = "means", 
                           mix)

#Load the discrimination factors
discr <- load_discr_data(filename = "tef16.csv", mix)


# Make an isospace plot
plot_data <- plot_data(filename="isospace_plotPW15", plot_save_pdf=T, plot_save_png=F, mix,source,discr)

#Calculate convex hull area
calc_area(source=source, mix=mix, discr=discr)

#Make priors
plot_prior(alpha.prior=1,source)


#Write JAGS file
model_filename <- "MixSIAR_model.txt"   # Name of the JAGS model file
resid_err <- TRUE
process_err <- TRUE
write_JAGS_model(model_filename, resid_err, process_err, mix, source)

#Run Test
run <- list(chainLength=1000, burn=500, thin=1, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="normal", mix, source, discr, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Run Normal
run <- list(chainLength=100000, burn=50000, thin=50, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="normal", mix, source, discr, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Run Long
run <- list(chainLength=300000, burn=200000, thin=100, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="long", mix, source, discr, model_filename, 
                    alpha.prior = 1, resid_err, process_err)

#Run Extreme
run <- list(chainLength=3000000, burn=1500000, thin=500, chains=3, calcDIC=TRUE)
jags.1 <- run_model(run="extreme", mix, source, discr, model_filename, 
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
Month <- as.character(x=c("September", "December"))
Month <- factor(Month, levels=c("September", "December"))

#PW downstream
DF <- data.frame(x=c("Month"), min=c(0.062, 0.200), low=c(0.084, 0.222), mid=c(0.098, 0.234), top=c(0.112, 0.248), max=c(0.132, 0.268))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))


#PW upstream
DF <- data.frame(x=c("Month"), min=c(0.006, 0.017), low=c(0.012, 0.037), mid=c(0.019, 0.053), top=c(0.026, 0.069), max=c(0.038, 0.096))

ggplot(DF, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))
