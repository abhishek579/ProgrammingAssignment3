#This creates 2 tidy data sets as below:
#1. tidy_dataset - This contains the tidy merged training and test sets on the mean and standard deviation for each measurement
#2. mean_activity_subject - This is a tidy data set with the average of each variable for each activity and each subject

#Install and load the dependent R packages
install.packages(c("dplyr","data.table"))
library("dplyr")
library("data.table")

#Download all the files
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./UCI HAR Dataset.zip")){
   download.file(fileurl, destfile = "./UCI HAR Dataset.zip")
   unzip("UCI HAR Dataset.zip", exdir = ".")
}

#Get the current working directory
path <- getwd()

#Set the Working Directory
setwd("./UCI HAR Dataset")

#Read all the input files into R as data tables
#Store the training and test datasets into data tables named "training" and "test" respectively
training <- read.table("./train/X_train.txt", header = FALSE)
test <- read.table("./test/X_test.txt", header = FALSE)

#Store the training and test labels into data tables named "training_labels" and "test_labels" respectively
training_labels <- read.table("./train/y_train.txt", header = FALSE)
test_labels <- read.table("./test/y_test.txt", header = FALSE)

#Store the activity labels into a data table named "activity_labels"
activity_labels <- read.table("./activity_labels.txt", header = FALSE)

#Store the training and test subjects into data tables named "training_subjects" and "test_subjects" respectively
training_subjects <- read.table("./train/subject_train.txt", header = FALSE)
test_subjects <- read.table("./test/subject_test.txt", header = FALSE)

#Store the variable names in a data table called "headers"
headers <- read.table("./features.txt", header = FALSE)


#Merge the training and test data tables
#Merge the training and test set into a single data table named "dataset"
dataset <- rbind (training, test)

#Merge the training and test subjects into a single data table named "subjects"
subjects <- rbind(training_subjects, test_subjects)

#Merge the training and test labels into a single data table named "labels"
labels <- rbind(training_labels, test_labels)


#Provide headers to each of the columns in the dataset
names(dataset) <- headers$V2

#Covert the header names to lower characters
names(dataset) <- tolower(names(dataset))

#Remove all punctuations from the header names
names(dataset) <- gsub("[[:punct:]]", "", names(dataset))

#Extract only the measurements on the mean and standard deviation for each measurement
tidy_dataset <- dataset[, (grep("mean|std", names(dataset)))]

#Map the activity corresponding to each of the labels
labels$activitylabel <- activity_labels$V2[match(labels$V1,activity_labels$V1)]

#Add the "activity" and "subjects" columns to the dataset
tidy_dataset <- cbind(labels$activitylabel, subjects, tidy_dataset)
names(tidy_dataset)[1:2] <- c("activity", "subject")

#Create a new data table in which the data is grouped by the activity and the subject
grouped <- group_by(tidy_dataset, subject, activity)

#Create a tidy data set "mean_activity_subject" with the average of each variable for each activity and each subject
mean_activity_subject <- summarize_all(grouped, mean)

#Write this dataset to a file
write.table(mean_activity_subject, file = "./Mean_activity_subject.txt", row.names = FALSE)

#Print the tidy dataset containing the means of all variables for each subject and activity
head(mean_activity_subject)

#Restore the working directory to it's previous state
setwd(path)