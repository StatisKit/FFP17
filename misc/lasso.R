library(glasso)
#setwd("/home/adjamagattefall/Desktop/stage03avr")
###########Lecture des donnees ###########
dat <- read.csv("results/data.csv",sep = " ",h=F)
sigma <- cov(dat)
d = length(dat)
################# Des valeurs de lamda = sigma inverse #################
lambda = seq(0.001,max(sigma),length.out = 1 + d*(d+1)/2)
lambda = sort(lambda,decreasing = TRUE)

############ON TOURNE LE LASSO POUR CHAQUE LAMDA##########
j=1
for(i in lambda){
  lasso.res  <- glasso(sigma,rho =i)
  write.table(lasso.res$wi, paste("lasso_", j, ".csv", sep=''), row.names=FALSE,col.names = FALSE, sep =" ")
  j=j+1
}
