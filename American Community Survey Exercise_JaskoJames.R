# Assignment: American Community Survey Exercise
# Name: Jasko, James
# Date: 2022-04-03

library(ggplot2)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/James/Documents/GitHub/DSC520")

## Load the 'data/acs-14-1yr-s0201.csv'
survey_df <- read.csv("data/acs-14-1yr-s0201.csv")

## Please provide the output from the following functions: str(); nrow(); ncol()
str(survey_df)
nrow(survey_df)
ncol(survey_df)

## Create a Histogram of the HSDegree variable using the ggplot2 package.
ggplot(survey_df, aes(HSDegree))+ geom_histogram(binwidth = 1,bins = 50) +  ggtitle("HSDegree distribution") + ylab("Count") + xlab("% of people with High School Degree")

## Include a normal curve to the Histogram that you plotted.
ggplot(data = survey_df) + geom_histogram(mapping = aes(x = HSDegree, y=..density..), binwidth = 1,bins = 50) +
ggtitle("HSDegree distribution") + ylab("frequency") + xlab("% of people with High School Degree") +
stat_function(fun = dnorm, args = list(mean = mean(survey_df$HSDegree), sd = sd(survey_df$HSDegree)))

## Create a Probability Plot of the HSDegree variable.
ggplot(survey_df, aes(sample=HSDegree)) + stat_qq() + stat_qq_line()

## Now that you have looked at this data visually for normality, you will now quantify normality with numbers using the stat.desc() function. 
## Include a screen capture of the results produced.
library(pastecs)
stat.desc(survey_df$HSDegree, basic = FALSE, norm = TRUE)
