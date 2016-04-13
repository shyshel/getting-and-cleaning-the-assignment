## Preparing data
Download data archive and extract data. After this you should set working directory to directory `UCI HAR Dataset`. To perform the script `data.table` package should be installed.

## Reading meta data
  - File "features.txt" read to `features` variable
  - File "activity_labels.txt" read to `activity_labels` variable
  - We save all `mean` and `std` features to `target_features` variable

## Training data
  - File `X_train.txt` read to variable `X_train`(selected only features from `target features` and set column names)
  - Added column with activity data from `y_train.txt`

## Test data
  - File `X_test.txt` read to variable `X_test`(selected only features from `target features` and set column names)
  - Added column with activity data from `y_test.txt`
  
## Merging train and test data
Test table appended to training table and setted text to variable `X` description for activity rather numeric index

## Result dataset
`X_mean` contains data for mean values for each feature grouped by activity