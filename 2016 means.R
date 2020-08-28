#Mean graphs for each location - 2016

#Downstream
USdown16 <- USdown16
as.factor(USdown16$Month)
USdown16$Month <- factor(USdown16$Month, levels = c("August", "November"))
pd <- position_dodge(0.1)
ggplot(USdown16, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-19) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USdown16, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(1,12) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
USup16 <- USup16
as.factor(USup16$Month)
USup16$Month <- factor(USup16$Month, levels = c("August", "November"))
pd <- position_dodge(0.1)
ggplot(USup16, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-19) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(USup16, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(1,12) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

#Point Wolfe
#Downstream
PWdown16 <- PWdown16
as.factor(PWdown16$Month)
PWdown16$Month <- factor(PWdown16$Month, levels = c("August", "November"))
pd <- position_dodge(0.1)
ggplot(PWdown16, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-19) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWdown16, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(1,12) +
  theme_bw(base_size = 16)+
  ggtitle("A") +
  theme(plot.title = element_text(hjust = 0.5))

#Upstream
PWup16 <- PWup16
as.factor(PWup16$Month)
PWup16$Month <- factor(PWup16$Month, levels = c("August", "November"))
pd <- position_dodge(0.1)
ggplot(PWup16, aes(x=Month, y=d13C, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d13C-CSD, ymax=d13C+CSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ13C (‰)", x = "Month") +
  ylim(-34,-19) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

pd <- position_dodge(0.1)
ggplot(PWup16, aes(x=Month, y=d15N, colour=Group, group=Group)) + 
  geom_errorbar(aes(ymin=d15N-NSD, ymax=d15N+NSD), colour="grey", width=.1, position=pd) +
  geom_line(position=pd, size=1) +
  geom_point(position=pd, size=3) +
  labs(y="δ15N (‰)", x = "Month") +
  ylim(1,12) +
  theme_bw(base_size = 16)+
  ggtitle("B") +
  theme(plot.title = element_text(hjust = 0.5))

