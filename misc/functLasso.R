LASSO <- function(dat,penality){
  
  library(glasso)
  d=length(dat)
  sigma <- cov(dat)
  #penalité linéaire
  if (penality == "LINEAIR")
    lamda <- seq(0.001,max(sigma),length.out = 1+d*(d+1)/2)
  #penalité avec les val de sigma
  else 
    lamda <- c(sigma[ upper.tri(sigma,diag = TRUE) ],0.001)
  
  lamda <- sort(abs(lamda),decreasing = TRUE)
  
  ############ON TOURNE LE LASSO POUR CHAQUE LAMDA##########
  j=1
  for(i in lamda){
    
    lasso.res  <- glasso(sigma,rho =i)
    write.table(lasso.res$wi, paste("lasso_", j, ".csv", sep=''), row.names=FALSE,col.names = FALSE, sep =" ")
    j=j+1
  }
  lamda
}