\documentclass{article}
\usepackage[margin = 1in]{geometry}
\usepackage{amsmath}

\begin{document}
\begin{flushleft}


Name 1\\
Name 2 \\
STAT 672 Homework \#0\\
\vspace*{2\baselineskip}
%or can use 
%\bigskip
Problem 1 from Lab\\
Part A\\
<<1a, echo=TRUE, eval=TRUE, background="white", include=TRUE, fig=TRUE, fig.height=3>>=
  set.seed(1)
set.seed(4)
par(mfrow = c(1,2))
y1 <- arima.sim(model=list(ma=-0.8), n=100)
acf(y) 
acf(y1 , type = "partial")  
acf(y1, plot = F)
acf(y1, type="partial", plot = F)
  
 
  
plot(y2 <- arima.sim(model=list(ma=c(-0.1 , 0.21)), n=500,sd = 1))
acf(y2)
acf(y2,type = "partial")
acf(y2,plot=F)
acf(y2, type="partial", plot = F)
  