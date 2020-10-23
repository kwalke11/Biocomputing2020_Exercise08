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
guess = 0 #create variable for the guess number
guess <- as.integer(readline(prompt="Guess: ")) #allow entry of guess
correct_guess = FALSE #create variable that sets guess as false in order to repeat prompt for user to guess if guess is false 
attempts = 0 #create variable for the number of attempts

while (correct_guess == FALSE){if (guess > x){ #while statement for when the guess is wrong and higher than random number
        print("LOWER") #prints lower 
        attempt = attempts + 1 #adds an attempt in the case of an incorrect guess
        guess <- as.integer(readline(prompt="Guess: ")) #prompts and takes input for another guess after the incorrect guess
      }else if (guess < x){ #conditional for guess being lower than random number
        print("HIGHER") #prints higher
        attempt = attempts + 1 #adds an attempt in the case of an incorrect guess
        guess <- as.integer(readline(prompt="Guess: ")) #prompts and takes input for another guess after the incorrect guess
      }else if (guess ==x){ #conditional for if guess is correct 
        print("Your guess was correct") #tells user guess is correct 
        correct_guess = TRUE #specifies that the guess is correct 
        break #ends the while statement 
      }
  }


