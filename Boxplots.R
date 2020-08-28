#Boxplots - all years
#Dimensions: width:300 and heigth:500
#2.5, 25,  50, 75, 97.5

library(MixSIAR)
library(R2WinBUGS)
library(splancs)
library(ggplot2)

#Upper Salmon - 2015
Month <- as.character(x=c("Sept", "Dec"))
Month <- factor(Month, levels=c("Sept", "Dec"))

#Downstream
USdown15 <- data.frame(x=c("Month"), min=c(0.055, 0.193), low=c(0.084, 0.222), mid=c(0.098, 0.234), top=c(0.112, 0.248), max=c(0.138, 0.274))

ggplot(USdown15, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup15<- data.frame(x=c("Month"), min=c(0.004, 0.013), low=c(0.012, 0.037), mid=c(0.019, 0.053), top=c(0.026, 0.069), max=c(0.043, 0.103))

ggplot(USup15, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))





#Upper Salmon - 2016
Month <- as.character(x=c("Aug", "Nov"))
Month <- factor(Month, levels=c("Aug", "Nov"))

#Downstream
USdown16 <- data.frame(x=c("Month"), min=c(0.153, 0.365), low=c(0.185, 0.393), mid=c(0.201, 0.407), top=c(0.216, 0.421), max=c(0.246, 0.446))

ggplot(USdown16, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup16 <- data.frame(x=c("Month"), min=c(0.014, 0.039), low=c(0.030, 0.081), mid=c(0.039, 0.102), top=c(0.050, 0.124), max=c(0.073, 0.166))

ggplot(USup16, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))




#Upper Salmon - 2017
Month <- as.character(x=c("Aug", "Sept", "Dec"))
Month <- factor(Month, levels=c("Aug", "Sept", "Dec"))

#Downstream
USdown17 <- data.frame(x=c("Month"), min=c(0.053, 0.240, 0.334), low=c(0.083, 0.265, 0.360), mid=c(0.099, 0.279, 0.374), top=c(0.116, 0.293, 0.386), max=c(0.147, 0.319, 0.409))

ggplot(USdown17, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup17 <- data.frame(x=c("Month"), min=c(0.010, 0.046, 0.072), low=c(0.020, 0.074, 0.110), mid=c(0.027, 0.089, 0.131), top=c(0.035, 0.105, 0.151), max=c(0.054, 0.138, 0.189))

ggplot(USup17, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))




#Point Wolfe - 2015
Month <- as.character(x=c("Sept", "Dec"))
Month <- factor(Month, levels=c("Sept", "Dec"))

#Downstream
PWdown15 <- data.frame(x=c("Month"), min=c(0.016, 0.016), low=c(0.043, 0.046), mid=c(0.069, 0.072), top=c(0.107, 0.111), max=c(0.352, 0.377))

ggplot(PWdown15, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))


#Upstream
PWup15 <- data.frame(x=c("Month"), min=c(0.112, 0.119), low=c(0.163, 0.171), mid=c(0.187, 0.195), top=c(0.209, 0.218), max=c(0.250, 0.259))

ggplot(PWup15, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))




#Point Wolfe - 2016
Month <- as.character(x=c("Aug", "Nov"))
Month <- factor(Month, levels=c("Aug", "Nov"))

#Downstream
PWdown16 <- data.frame(x=c("Month"), min=c(0.245, 0.185), low=c(0.361, 0.297), mid=c(0.392, 0.332), top=c(0.420, 0.363), max=c(0.465, 0.417))

ggplot(PWdown16, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup16 <- data.frame(x=c("Month"), min=c(0.306, 0.251), low=c(0.379, 0.318), mid=c(0.403, 0.342), top=c(0.426, 0.363), max=c(0.460, 0.401))

ggplot(PWup16, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))




#Point Wolfe -2017
Month <- as.character(x=c("Aug", "Sept", "Dec"))
Month <- factor(Month, levels=c("Aug", "Sept", "Dec"))

#Downstream
PWdown17 <- data.frame(x=c("Month"), min=c(0.094, 0.099, 0.089), low=c(0.124, 0.138, 0.124), mid=c(0.139, 0.157, 0.144), top=c(0.154, 0.175, 0.164), max=c(0.183, 0.213, 0.205))

ggplot(PWdown17, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Downstream") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup17 <- data.frame(x=c("Month"), min=c(0.084, 0.103, 0.093), low=c(0.123, 0.141, 0.129), mid=c(0.143, 0.160, 0.148), top=c(0.164, 0.178, 0.166), max=c(0.201, 0.212, 0.199))

ggplot(PWup17, aes(x=Month, ymin = min, lower = low, middle = mid, upper = top, ymax = max)) +
  geom_boxplot(stat = "identity", fill='#A4A4A4') +
  ylim(0, 1) +
  xlab("Month") +
  ylab("Proportion of marine derived nutrients in diet") +
  theme_bw(base_size = 16) +
  ggtitle("Upstream") +
  theme(plot.title = element_text(hjust = 0.5))

