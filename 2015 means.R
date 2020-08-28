#Mean graphs for each location - 2015
library(ggplot2)

#Downstream
USdown15 <- USdown15
as.factor(USdown15$Month)
USdown15$Month <- factor(USdown15$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(USdown15, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USdown15, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup15 <- USup15
as.factor(USup15$Month)
USup15$Month <- factor(USup15$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(USup15, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USup15, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
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
PWdown15 <- PWdown15
as.factor(PWdown15$Month)
PWdown15$Month <- factor(PWdown15$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(PWdown15, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWdown15, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup15 <- PWup15
as.factor(PWup15$Month)
PWup15$Month <- factor(PWup15$Month, levels = c("September", "December"))
pd <- position_dodge(0.1)
ggplot(PWup15, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-17) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWup15, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(0.5,10) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

