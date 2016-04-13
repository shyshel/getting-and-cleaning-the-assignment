#requirement! working directory should set to 'UCI HAR Dataset' folder

require(data.table)


#column names
features <- fread("features.txt")
activity_labels <- fread("activity_labels.txt")
target_features <- features[grep("mean|std", features[,V2], ignore.case = T),]

#train data
X_train <- fread("train/X_train.txt", select = target_features[,V1], col.names = target_features[,V2])
X_train[, activity_idx := scan("train/y_train.txt")]

#test data
X_test <- fread("test/X_test.txt", select = target_features[,V1], col.names = target_features[,V2])
X_test[, activity_idx := scan("test/y_test.txt")]

#merging
X <- rbind(X_train, X_test)
X[activity_labels, activity := V2, on=c(activity_idx="V1")][, activity_idx := NULL]

#calculating mean by activity
X_mean <- X[,lapply(.SD, mean), by=activity]