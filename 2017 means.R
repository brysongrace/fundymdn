#Mean graphs for each location - 2017
library(ggplot2)

#Upper Salmon
#Downstream
USdown17 <- USdown17
as.factor(USdown17$Month)
USdown17$Month <- factor(USdown17$Month, levels = c("August","September", "December"))
pd <- position_dodge(0.1)
ggplot(USdown17, aes(x=Month, y=d13C, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USdown17, aes(x=Month, y=d15N, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup17 <- USup17
as.factor(USup17$Month)
USup17$Month <- factor(USup17$Month, levels = c("August","September", "December"))
pd <- position_dodge(0.1)
ggplot(USup17, aes(x=Month, y=d13C, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USup17, aes(x=Month, y=d15N, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

#Point Wolfe
#Downstream
PWdown17 <- PWdown17
as.factor(PWdown17$Month)
PWdown17$Month <- factor(PWdown17$Month, levels = c("August","September", "December"))
pd <- position_dodge(0.1)
ggplot(PWdown17, aes(x=Month, y=d13C, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWdown17, aes(x=Month, y=d15N, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup17 <- PWup17
as.factor(PWup17$Month)
PWup17$Month <- factor(PWup17$Month, levels = c("August","September", "December"))
pd <- position_dodge(0.1)
ggplot(PWup17, aes(x=Month, y=d13C, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWup17, aes(x=Month, y=d15N, colour=Species, group=Species)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

