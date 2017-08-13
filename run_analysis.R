# --- define working directory ---
getwd()
newwd <- "yourwork/directory" # Insert direction containing raw data here
setwd(newwd)
getwd()

# --- load libraries ---
install.packages("plyr", dependencies = TRUE)
library(plyr)
library(dplyr)
library(data.table)

# --- open files ---
x_test <- read.table("test/X_test.txt") # Load X_test data file
#head(x_test)
#class(x_test)
#dim(x_test)
#names(x_test)
y_test <- read.table("test/y_test.txt") # Load y_test file containing performed test
subject_test <- read.table("test/subject_test.txt") # Load subject numbers of data set
test <- cbind(subject_test, y_test, x_test) # Combine subject numbers, test number and data into one dataframe
# head(test[1:5,1:5])

x_train <- read.table("train/X_train.txt") # Load train dataset
y_train <- read.table("train/y_train.txt") # Load train test information
subject_train <- read.table("train/subject_train.txt") # Load train subject list
train <- cbind(subject_train, y_train, x_train) # Combine subject numbers, test number and data into one dataframe

all <- rbind(test, train) # Combine test and train dfs into one df

# Optional commands to look at generated df
#test <- cbind(y_test, x_test)
#all[1:20,1:10]
#names(test)
#head(test[1111:1115, 1:5])

# --- Import column names ---
column <- read.table("features.txt")
#dim(column)
#head(column)
column <- column[,2]
column <- as.character(column)
#head(column)
#class(column)
all_column <- c("subject", "test", column) # name first column subject, second test, followed by column names by dataset
#head(all_column)
colnames(all) <- all_column
# all[1:20,105:110] # Optional command to look at a selected area of the df

write.csv(all, file="dataset.csv") # Write whole dataset into dataset.csv

# --- Calculate means for all mean and std columns ---

tidy <- all[grep("mean|std", names(all), value=TRUE)]
tidy <- cbind(all[1:2], tidy) # Add index
#tidy[1:20,1:20] # Look at a part of the tidy data set and 
#dim(tidy) # the dimensions

tidy.dt <- data.table(tidy)
setkey(tidy.dt, subject)
tidy.dt<-(tidy.dt[, lapply(.SD, mean), by = list(subject, test)]) # Calculate means for all specimens and activities
tidy.dt[1:10,1:10]

# --- Add activity labels ---
labels <- read.table("activity_labels.txt") # Load labels
# head(labels)
#labels[,"V1"]
tidy.dt$test <- factor(tidy.dt$test, levels = labels[, "V1"], labels = labels[, "V2"])
# Replacing numbers with labels from the activity_labels.txt file

# --- Saving tidy dataset in "tidy.txt" ---
write.table(tidy.dt, file="tidy.txt", row.names = FALSE)
