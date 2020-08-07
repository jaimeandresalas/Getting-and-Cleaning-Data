path <- "C:/JaimeAndres/DataScience/R/datasciencecourseraR/Getting and Cleaning Data/Getting-and-Cleaning-Data/UCI HAR Dataset"


#Read the first archive Features

features <- read.table(paste0(path,"/features.txt"))
colnames(features) <- c("Id","feature")

# read labels
act_labels <- read.table(paste0(path,"/activity_labels.txt"))
colnames(act_labels) <- c("Id","activity")

#read the test
test_x <- read.table(paste0(path,"/test/X_test.txt"))
test_y <- read.table(paste0(path,"/test/Y_test.txt"))
sub_test <- read.table(paste0(path,"/test/subject_test.txt"))


#read the train set
train_x <- read.table(paste0(path,"/train/X_train.txt"))
train_y <- read.table(paste0(path,"/train/Y_train.txt"))
sub_train <- read.table(paste0(path,"/train/subject_train.txt"))


#Mergin the training and the test sets to create one data set

x <- rbind(test_x,train_x)
y <- rbind(test_y,train_y)
sub <- rbind(sub_test,sub_train)
#Removing unnecesary datasets

rm(test_x)
rm(test_y)
rm(train_x)
rm(train_y)
rm(sub_test)
rm(sub_train)

#I need to rename cols for x set
colnames(x) <- features$feature

#Next, extracting only the measurements on the mean and standard deviation

mean_col <- grep("mean",colnames(x))
std_col <- col <- grep("std",colnames(y))
final_col <- mean <- col
final_col <- append(final_col,std_col)
final_col <- sort(final_col)

#Removing from x set all column apart mean and std measurement

x <- x[,final_col]
#Removing unnecessary variables
rm(mean_col)
rm(std_col)
rm(final_col)

#I'm gonna do it the same for y set
colnames(y) <- "activityId"
y <- merge(x=y,y=act_labels,by.x = "activityId",by.y = "Id")

#Rename subject cols
colnames(sub) <- "subjectId"
all_data <- cbind(sub,y,x)
#I need a create a "TiDY DATA SET" for this reason I use dplyr
library(dplyr)
tidy_data <- all_data %>%
  group_by(subjectId, activityId, activity) %>%
  summarise_all(list(mean))
write.csv(all_data, "all_data.csv")
write.csv(tidy_data, "tidy_data.csv")
