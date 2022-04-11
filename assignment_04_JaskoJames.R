# Assignment: ASSIGNMENT 4.2
# Name: Jasko, James 
# Date: 4/10/2022

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/James/Documents/GitHub/DSC520")

## Load the `data/scores/heights.csv` to
Scores_df <- read.csv("data/scores.csv")

## 1) Observational Units:  Course grades and total points earned
## 2) Categorical variable is "Section", Quantitative variable is "Score"
## 3) Variable to capture Sports section and regular section 
Sport=subset(Scores_df,Section=="Sports")
head(Sport)


Reg=subset(Scores_df,Section=="Regular")
head(Reg)

## 4 Use the Plot function to plot each Sections scores and the number of students achieving that score.

Score_1=Sport[,2]
Score_2=Reg[,2]
par(mfrow=c(2,1))
plot(Score_1, xlab="Number of Students", ylab="Score", main="Sports")
plot(Score_2, xlab="Sumber of Students", ylab="Score", main="Regular")

## a) Comparing and contrasting the point distributions between the two section,
##looking at both tendency and consistency:##Can you say that one section tended to score more points than the other?
## The regular students tended to perform  better than the Sports students

## b. Did every student in one section score more points than every student in the other section? 
## No.  While the Regular students tended to perform better, at least 10 students in the sports group performed better

## c. What could be one additional variable that was not mentioned in the narrative that could be influencing the point distributions between the two sections?
## An additional variable could be hours spent studying.  