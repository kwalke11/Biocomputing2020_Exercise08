setwd("~/Desktop/Biocomputing_R/Biocomputing2020_Exercise08") #set working directory
scores <- read.table(file="UWvMSU_1-22-13.txt",header=TRUE, sep='') #read scores file and create table with scoring data
cm_scores <- data.frame("time"=(scores$time),"team1"="UW", "team2"="MSU")
UW_scores <- data.frame("time"=scores$time[scores$team=="UW"], "MSU_Score"=0,UW_Score=cumsum(scores$score[scores$team=="UW"]))
UW_scores
MSU_scores <- data.frame("time"=scores$time[scores$team=="MSU"],"MSU_Score"=cumsum(scores$score[scores$team=="MSU"]), "UW_Score"=0)
MSU_scores
plot(x=MSU_scores$time, y=MSU_scores$MSU_Score, type='l',xlab="time", ylab ="score", col="dark green")
lines(x=UW_scores$time, y=UW_scores$UW_Score, col ="red")

