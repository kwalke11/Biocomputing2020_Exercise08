setwd("~/Desktop/Biocomputing_R/Biocomputing2020_Exercise08") #set working directory
scores <- read.table(file="UWvMSU_1-22-13.txt",header=TRUE, sep='') #read scores file and create table with scoring data
cm_scores <- data.frame("time"=(scores$time),"team1"="UW", "team2"="MSU")
UW_scores <- data.frame("time"=scores$time[scores$team=="UW"], "UW_Score"=cumsum(scores$score[scores$team=="UW"]), "MSU_Score")
for (i in 1:nrow(scores)){
  if (scores$team[i]=="UW")
    cm_scores$UW_Score <- cumsum(scores$score[i]){
      }else{
        cm_scores$MSU_Score <- cumsum(scores$score[i])
      }
}
UW_scores
MSU_scores <- data.frame("time"=scores$time[scores$team=="MSU"], "MSU_Score"=cumsum(scores$score[scores$team=="MSU"]), "UW_Score")
MSU_scores
remove(game_scoring)
