#BIOST 513 Data Analysis Project
#May 21, 2022 

#setwd("~/Desktop/biost513/data")
# data <- read.csv("~/Desktop/biost513/data/dataproject2022.csv")

#setwd("/Users/NicoleBriggs 1/Documents/MPH Coursework/SpringQ2022/biost513/biost513final/") #nicole
#dataDir <- ("/Users/NicoleBriggs 1/Documents/MPH Coursework/SpringQ2022/biost513/biost513final/") #nicole 

data <- read.csv(paste0(dataDir, "dataproject2022.csv"))

summary(data$hospvs)
summary(data$calltmcat)

data <- data[complete.cases(data[ , c('hospvs')]), ]

summary(data$hospvs)

