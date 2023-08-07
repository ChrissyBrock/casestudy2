install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

dailyActivity_merged <- read_csv("Fitabase/Data_used/dailyActivity_merged.csv")
head(dailyActivity_merged)
sleepDay_merged <- read_csv("Fitabase/Data_used/sleepDay_merged.csv")
head(sleepDay_merged)
consolidated_averages <- read_csv("Fitabase/Data_used/weightLogInfo_merged.csv")
head(consolidated_averages)

ggplot(data=dailyActivity_merged, aes(x=TotalSteps, y=SedentaryMinutes)) + 
  geom_point(color="cyan") +
  geom_smooth(method="gam",formula = y ~s(x)) +
  labs(title="Total Steps vs Sedentary Minutes")

ggplot(data=sleepDay_merged, aes(x =AvgTimeInBed, y=AvgMinutesAsleep)) +
  geom_point(color="blue") +
  geom_smooth(method="gam",formula = y ~s(x), color="green") +
  labs(title="Average Sleep in Bed vs. Average Time in Bed")

ggplot(data=dailyActivity_merged, aes(x =TotalDistance, y=Calories)) +
  geom_point(color="purple") +
  geom_smooth(method="gam",formula = y ~s(x),color="red") +
  labs(title="Distance vs. Calories")

ggplot(data=sleepDay_merged, aes(x =TotalSteps, y=TotalMinutesAsleep)) +
  geom_point(color="purple") +
  geom_smooth(color="red") +
  labs(title="Total Steps vs. Total Minutes Asleep")

ggplot(data=dailyActivity_merged, aes(x =AvgCalories, y=AvgSteps)) +
  geom_point(color="purple") +
  geom_smooth(color="red") +
  labs(title="Average Steps vs. Average Calories")