## Coursera Getting and Cleaing Data Peer Graded Assignment ##
## title: run_analysis.R ##
## output: tidy data set - "tidy_data.txt" ##
## author: Scott Robertson ##
## os: macOS 10.13.6 ##
## R version: 3.5.1 ##
## Required packages: dplyr ##

## Pre-Processing: Install packages ##

if("dplyr" %in% rownames(installed.packages()) == FALSE){
    install.packages("dplyr")
}

library(dplyr)


## Step 1: Download Study Data ##

# Create "data" folder within working directory to store information if not
# already avaliable
if (!file.exists("data")) {
      dir.create("data")
}

# Set URL to download files from
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download files to data folder
download.file(fileUrl, "./data/dataset.zip", method = "curl")

# Store date of download in a value
dateDownloaded <- date()

# Extract files from zip. Will be stored as UCI HAR Dataset
unzip("./data/dataset.zip", exdir = "./data/")

# End of step message
message("Data downloaded and folders unzipped")

## Step 2: Reading raw data sets into R and assigning descriptive activity ##
## and variable lables ##

# Read in features data which will be used for variable names
variables <- read.table("./data/UCI\ HAR\ Dataset/features.txt")

# Reading activity labels data which will be used for activity lables
labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Assign column names to labels data set
colnames(labels) <- c("activityId", "activity")

# Read in training data to tables
x_train <- read.table("./data/UCI\ HAR\ Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI\ HAR\ Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI\ HAR\ Dataset/train/subject_train.txt")

# Assign column names to training data
colnames(x_train) <- variables[,2]
colnames(y_train) <- "activityId"
colnames(subject_train) <- "subjectId"

# Read in test data to tables
x_test <- read.table("./data/UCI\ HAR\ Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI\ HAR\ Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI\ HAR\ Dataset/test/subject_test.txt")

# Assign column names to test data
colnames(x_test) <- variables[,2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

# End of step message
message("Raw data sets read into environment and column lables assigned")


## Step 3: Merge train and test data sets into a single table

# Column bind training and test data with subjectId, activityId, followed by variables
train_all <- cbind(subject_train, y_train, x_train)
test_all <- cbind(subject_test, y_test, x_test)

# Use row bind to append test data to end of training data
combined_data <- rbind(train_all, test_all)

# Add in descriptive activity lables and drop activityId column
suppressWarnings(full_data <- merge(combined_data, labels, by="activityId", all.x = TRUE))
full_data$activityId <- NULL
tolower(full_data$activity)

# End of step message
message("Data sets combined into a single unit and activityId replaced with descriptive activity column")


## Step 4: Extract the mean and standard deviation measurements for each activity ##

# Create a vector containing a list of the column names
colNames <- colnames(full_data)

# Create a logical vector using grepl to identify the columns that include ID,
# mean and standard deviation measurements
extractcol <- (grepl("activity" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames) 
  )

# Subset full_data using the logical vector to leave only the required columns
filtered_data <- full_data[ , extractcol == TRUE]

# End of step message
message("Subset of data created that contains only mean and standard deviation meassurments")


## Step 5: Create aggregate data for tidy data set and export to text

# Aggregate mean data based on subjectId and activity
tidy_data <- aggregate(. ~subjectId + activity, filtered_data, mean)

# Order data by subjectId and activity
tidy_data <- tidy_data[order(tidy_data$subjectId, tidy_data$activity),]

# Write tidy data set to a text file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)

# End of step message
message("Data aggregated and copy of tidy data set saved to working directory.")
message("Call complete")
