


SigmaX <- sqrt(0.001294)
Xavarage <- 0.129754
n <- 50

yk <- c(0.07508,0.10016,0.12524,0.15032,0.17540,0.20048,0.22556,0.25064)
mk <- c(2,10,11,12,11,3,0,1)
tk <- (yk - Xavarage)/SigmaX
ft <- c(0.064269, 0.205342, 0.450070,0.716244, 0.897766, 0.975358, 0.996131, 1)
pk <- c(0.064269, 0.141073, 0.244728, 0.266174, 0.181522, 0.077592, 0.020773, 0.003480)
npk <- pk*n

predXi <- ((mk-npk)^2)/npk
Xi <- sum(predXi)

dftable7 <- data.frame(yk,mk,tk,ft,pk,npk,predXi)
new_data1 <- c(0,0,0,0,0,0,Xi)
dftable7 <- rbind(dftable7,new_data1)


nu <- 2
Xi01 <- 4.61 
Xi005 <- 5.99 
Xi001 <- 7.38

XI1 <- c("Xi2nu,1-a","Xi2nu","H:")
Alpha01 <- c(Xi01,Xi,if(Xi>Xi01)"+"
             else "-")
Alpha005 <- c(Xi005,Xi,if(Xi>Xi005)"+"
             else"-")
Alpha001 <- c(Xi001,Xi,if(Xi>Xi001)"+"
             else"-")
dftable8 <- data.frame(XI1,Alpha01,Alpha005,Alpha001)


##########


xk <- c(0.08961, 0.09628, 0.15996, 0.12661, 0.15147, 0.11308, 0.12157, 0.16974, 0.17197, 0.13068)
zk <- c(0.14117, 0.13969, 0.09070, 0.11626, 0.12235, 0.10151, 0.12243, 0.09944, 0.11148, 0.11627)
divxkzk <- xk - zk

dftable12 <- data.frame(xk,zk,divxkzk)

n <- 3
na005 <- 0
na001 <- "-"

N <- c("na","n","H:")
Alpha005 <- c(na005,3,"H1")
Alpha001 <- c(na001,3,"-")

dftable13 <- data.frame(N,Alpha005,Alpha001)




##########
T <- 3
Ta005 <- 3
Ta001 <- 0

N <- c("Ta","T","H:")
Alpha005 <- c(Ta005,3,if(Ta005>T) "H1"
              else "H0")
Alpha001 <- c(Ta001,3,if(Ta001>T) "H1"
              else "H0")

dftable14 <- data.frame(N,Alpha005,Alpha001)





















