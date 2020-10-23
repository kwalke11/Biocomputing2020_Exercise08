setwd("~/Desktop/Biocomputing_R/Biocomputing2020_Exercise08") #set working directory
scores <- read.table(file="UWvMSU_1-22-13.txt",header=TRUE, sep='') #read scores file and create table with scoring data
UW_scores <- data.frame("time"=scores$time[scores$team=="UW"], UW_Score=cumsum(scores$score[scores$team=="UW"])) #create a dataframe with cumulative scores for UW
UW_scores #check to see if dataframe is correct
MSU_scores <- data.frame("time"=scores$time[scores$team=="MSU"],"MSU_Score"=cumsum(scores$score[scores$team=="MSU"])) #create a dataframe with cumulative scores for MSU
MSU_scores #check to ensure dataframe is correct
plot(x=MSU_scores$time, y=MSU_scores$MSU_Score, type='l',xlab="time", ylab ="score", col="dark green") #create a plot with a dark green line of cumulative MSU scores, x axis=time and y axis=score
lines(x=UW_scores$time, y=UW_scores$UW_Score, col ="red") #add a red line with UW cumulative scores to the same plot 
# end of problem #1
# start of problem #2
x <- sample(1:100, 1) #choose a random number
cat("I am thinking of a number 1-100...") #start game with instructions
guess = 0
guess <- as.integer(readline(prompt="Enter a guess: "))
correct_guess = FALSE
attempts = 0

while (correct_guess == FALSE){
      if(attempts > 10){
        print("You have entered too many guesses")
        break
      }else if (guess > x){
        print("LOWER")
        attempt = attempts + 1
        guess <- as.integer(readline(prompt="Enter another guess: "))
      }else if (guess < x){
        print("HIGHER")
        attempt = attempts + 1
        guess <- as.integer(readline(prompt="Enter another guess: "))
      }else{
        print("Your guess was correct")
        correct_guess = TRUE
        break
      }
  }


