1. set working directory (setwd) to 'UCI HAR Dataset' folder
2. features <- readLines('features.txt')
3. activity_labels <- read.table("activity_labels.txt")
4. X_training <- read.fwf("./train/X_train.txt", widths = 16)
