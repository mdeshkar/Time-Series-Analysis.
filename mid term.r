a<-1.4 ; b<- -0.6 ;c<- 0.8
o <- (-a*c+(1-b)*(1-(a^2)-1))/((1-b) - ((a^2)*(1+b))-((1-b)*(b^2)))
o1 <- (a*o - c)/(1-b)
ro1 <- o1/o
x<-ARMAacf(ar=c(a,b),ma = -c,lag.max = 3,pacf = T)
??ARMAacf
plot(x)
zapsmall(x)


o2 <- a*o1 + b*o;o2
ro2 <- o2/o
ro2
o3 <- a*o2 + b*o1;o3
ro3 <- o3/o
ro3


y<-arima.sim(n = 500, list(ar = c(1.4, -0.6), ma = -0.8,sd = 1))
acf(y,polt=T)
acf(y,type = "partial",plot = T)
g0<-((-a*c)-(a*b)+(1-b)-c*(1-b)*(a-c))/((1-b)-(a^2)-(a^2*b)-((1-b)*b^2))
g0
g1 <- (a*g0 +1)/(1-b);g1
ro1 <- g1/g0;ro1


g0<- (a*(1+b)+(1-b)*(1-c*(a-c)))/((1-b) * (1-(b^2))- ((a^2)*(1+b)));g0
g1 <- (a*g0 + 1)/(1-b);g1
ro1<-g1/g0;ro1

RHS <- (-a*c*(1+b))+ ((1-b)*(1-c*(a-c)));RHS
LHS <- (1-a)-((a^2)*(1+b))-(b^2);LHS
g0 <- RHS/LHS;g0
g1 <- (((a*g0)-c))/(1-b);g1
ro1 <- g1/g0;ro1


