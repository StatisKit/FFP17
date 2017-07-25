library(glasso)
dat <- read.csv("results/data.csv",sep = " ",h=F)
sigma <- cov(dat)

################# Des valeurs de lamda = sigma inverse #################
siginv <- sigma # les val de linverse tous < 1
lamda <- c(siginv[ upper.tri(siginv,diag = FALSE) ],0.001)
lamda <- abs(lamda)  
lamda <- sort(lamda,decreasing = TRUE)
d = length(lamda)
############ON TOURNE LE LASSO POUR CHAQUE LAMDA##########
j=1
for(i in lamda){

  lasso.res  <- glasso(sigma,rho =i)
  write.table(lasso.res$wi, paste("lasso_", j, ".csv", sep=''), row.names=FALSE,col.names = FALSE, sep =" ")
  j=j+1
}
