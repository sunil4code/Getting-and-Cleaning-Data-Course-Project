X_train  <- read.table("X_train.txt",sep="",fill = TRUE)
y_train  <- read.table("y_train.txt",sep="",fill = TRUE)
subject_train  <- read.table("subject_train.txt",sep="",fill = TRUE)
X_test  <- read.table("X_test.txt",sep="",fill = TRUE)
y_test  <- read.table("y_test.txt",sep="",fill = TRUE)
subject_test  <- read.table("subject_test.txt",sep="",fill = TRUE)
training_data  <- cbind(subject_train,y_train,X_train)
testing_data  <- cbind(subject_test,y_test,X_test)
all_data  <- rbind(training_data,testing_data)
features  <- read.table("features.txt")
names(all_data)  <- c("Subject","Activity",as.character(features$V2))
dataVariables = names(all_data)
filteredVars  <- c("Subject","Activity",dataVariables[grep('mean|std()',dataVariables)])
New_all_data  <- all_data[filteredVars]
activity_labels  <- read.table("activity_labels.txt")
names(activity_labels) = c("Activity","Activity Description")
New_all_data  <- merge(New_all_data,activity_labels,by="Activity")
New_all_data  <- New_all_data[,c(2,82,3:81)]
Tidy_New_data  <- aggregate(New_all_data[,3:81],list(New_all_data$Subject,New_all_data$`Activity Description`),mean)
names(Tidy_New_data)[1]  <- "Subject"
names(Tidy_New_data)[2]  <- "Activity Description"
write.table(Tidy_New_data,"Tidy_New_dataFile.txt",row.names = FALSE)
