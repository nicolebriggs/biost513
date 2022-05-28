#BIOST 513 Data Analysis Project
#May 21, 2022 

# setwd("~/Desktop/biost513/data")
# data <- read.csv("~/Desktop/biost513/data/dataproject2022.csv")

#setwd("/Users/NicoleBriggs 1/Documents/MPH Coursework/SpringQ2022/biost513/biost513final/") #nicole
#dataDir <- ("/Users/NicoleBriggs 1/Documents/MPH Coursework/SpringQ2022/biost513/biost513final/") #nicole 

data <- read.csv(paste0(dataDir, "dataproject2022.csv"))

summary(data$hospvs)
summary(data$calltmcat)

data <- data[complete.cases(data[ , c('hospvs')]), ]
summary(data$hospvs)

data$alive[data$hospvs==0] <- 1
data$alive[data$hospvs==1] <- 0
View(data)

# determining missingness
sum(!is.na(data$alive) & !is.na(data$calltmcat) & !is.na(data$age) & !is.na(data$sexp) & !is.na(data$shock)) # 1241

# model with exposure recoded 
model <- glm(alive ~ relevel(factor(calltmcat), ref = "0") + age + sexp + shock, data = data, family = "binomial")
summary(model)
coef(summary(model))
exp(coef(model))
exp(confint.default(model))



