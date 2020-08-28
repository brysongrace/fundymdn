#Mean graphs for each location - 2015
library(ggplot2)

#Downstream
USdown <- USdown
as.factor(USdown$Month)
USdown$Month <- factor(USdown$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(USdown, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USdown, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup <- USup
as.factor(USup$Month)
USup$Month <- factor(USup$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(USup, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USup, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
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
PWdown <- PWdown
as.factor(PWdown$Month)
PWdown$Month <- factor(PWdown$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(PWdown, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWdown, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup <- PWup
as.factor(PWup$Month)
PWup$Month <- factor(PWup$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(PWup, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWup, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

