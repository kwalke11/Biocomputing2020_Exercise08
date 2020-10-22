setwd("~/Desktop/Biocomputing_R/Biocomputing2020_Exercise08") #set working directory
scores <- read.table(file="UWvMSU_1-22-13.txt",header=TRUE, sep='') #read scores file and create table with scoring data
UW_scores <- data.frame("time"=scores$time[scores$team=="UW"], UW_Score=cumsum(scores$score[scores$team=="UW"])) #create a dataframe with cumulative scores for UW
UW_scores #check to see if dataframe is correct
MSU_scores <- data.frame("time"=scores$time[scores$team=="MSU"],"MSU_Score"=cumsum(scores$score[scores$team=="MSU"])) #create a dataframe with cumulative scores for MSU
MSU_scores #check to ensure dataframe is correct
plot(x=MSU_scores$time, y=MSU_scores$MSU_Score, type='l',xlab="time", ylab ="score", col="dark green") #create a plot with a dark green line of cumulative MSU scores, x axis=time and y axis=score
lines(x=UW_scores$time, y=UW_scores$UW_Score, col ="red") #add a red line with UW cumulative scores to the same plot 
# end of problem #1
