library(smatr)
library(ggplot2)


getwd()

data_all=read.csv(file = "data.csv")
data_a=read.csv(file = "changkuanbi_down.csv")
data_b=read.csv(file = "changkuanbi_up.csv")
data_c=read.csv(file = "cezhimengfalv_down.csv")
data_d=read.csv(file = "cezhimengfalv_up.csv")

data_a=log(data_a)
data_b=log(data_b)
data_c=log(data_c)
data_d=log(data_d)
data_all=log(data_all)

data_aa=data_a
data_aa$group="A"
data_bb=data_b
data_bb$group="B"
data_cc=data_c
data_cc$group="C"
data_dd=data_d
data_dd$group="D"

data1=rbind(data_aa,data_bb)
data2=rbind(data_cc,data_dd)
data=data1



data=data_b

plot(rawdata[,1:2])
data=rawdata
sma=sma(data$Ҷ���~data$Ҷ����,alpha=0.05)
summary(sma)

ggplot(data,aes(x=Ҷ����,y=Ҷ���))+geom_point()+theme(panel.grid.major =element_blank(), panel.grid.minor = element_blank(),
                                            panel.background = element_blank(),axis.line = element_line(colour = "black"))


plot(data[,1:2])



data=data_a
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=1,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=1,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")
z=lm(data$Ҷ����~data$Ҷ���)
# lines(data$Ҷ���,fitted(z),type="l")

sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)

par(new=TRUE)
data=data_b
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")

z=lm(data$Ҷ����~data$Ҷ���)
# lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)



data=data_c
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=1,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=1,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")

z=lm(data$Ҷ����~data$Ҷ���)
# lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)

par(new=TRUE)
data=data_d
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")

z=lm(data$Ҷ����~data$Ҷ���)
# lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)

data=data_all
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=15,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=15,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")

z=lm(data$Ҷ����~data$Ҷ���)
lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)

#E&F
data_e=subset(data_all,data_all$Ҷ����>data_all$Ҷ���*1.0074243-4.774913)

data_f=subset(data_all,data_all$Ҷ����<=data_all$Ҷ���*1.0074243-4.774913)

data=data_e
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=1,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")

z=lm(data$Ҷ����~data$Ҷ���)
lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)

par(new=TRUE)
data=data_f
# plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,xlim=c(110,380),ylim=c(0.95,3.4),xlab="ҶƬ���",ylab="ҶƬ����")
plot(data$Ҷ���,data$Ҷ����,lwd=2,pch=19,cex=1.5,cex.axis=1.5,cex.lab=1.5,cex.main=1.5,,xlim=c(4.6,6.1),ylim=c(0.01,1.22),xlab="lnLA(mm2)",ylab="lnLM(g)")
z=lm(data$Ҷ����~data$Ҷ���)
lines(data$Ҷ���,fitted(z))
sma=sma(data$Ҷ����~data$Ҷ���,alpha=0.05)
summary(sma)
####

data=data_a
A=sma(data$Ҷ����~data$Ҷ���)
data=data_b
B=sma(data$Ҷ����~data$Ҷ���)
sma(data$Ҷ����~data$Ҷ���,slope.test=A)

###

###

data_aa=data_a
data_aa$group="A"
data_bb=data_b
data_bb$group="B"
data_cc=data_c
data_cc$group="C"
data_dd=data_d
data_dd$group="D"
data_ee=data_e
data_ee$group="E"
data_ff=data_f
data_ff$group="F"

data1=rbind(data_aa,data_bb)
data2=rbind(data_cc,data_dd)
data3=rbind(data_ee,data_ff)
data=data1
slope.com(data$Ҷ����,data$Ҷ���,group=data$������)

data=data1
with(data, slope.com(log10(Ҷ����), log10(Ҷ���), group,  method='SMA', alpha=0.05))
# with(data, slope.com(Ҷ����, Ҷ���, group,  method='SMA', alpha=0.05))
sma=sma(Ҷ����~Ҷ���*group,data)
# sma=sma(log10(Ҷ����)~log10(Ҷ���)*group,data)
# sma=sma(log(Ҷ����)~log(Ҷ���)*group,data)
summary(sma)
# sma(Ҷ���~Ҷ����*group,data)
sma(Ҷ����~Ҷ���,data)

help('sma')
data=data2
# with(data, slope.com(log10(Ҷ����), log10(Ҷ���), group,  method='SMA', alpha=0.05))
with(data, slope.com(Ҷ����, Ҷ���, group,  method='SMA', alpha=0.05))

plot(log10(data2[,1:2]))
plot(data2[,1:2])

with(data, slope.com(Ҷ����, Ҷ���, group,  method='SMA', alpha=0.05))
with()
tsetmatrix=data_all[,-3]
tsetmatrix=as.matrix(tsetmatrix[,2:3])

rcorr(tsetmatrix, type="pearson")
write.csv(data1,file = "groupAB.CSV")
write.csv(data2,file = "groupCD.CSV")
write.csv(data3,file = "groupEF.CSV")