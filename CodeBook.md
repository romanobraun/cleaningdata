# --- CODEBOOK ---
Adapted from the codebook in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Activities measured:
* WALKING (id = 1) : Specimen was walking
* WALKING_UPSTAIRS (2): Specimen was walking upstairs
* WALKING_DOWNSTAIRS (3): Specimen was walking downstairs
* SITTING (4): Specimen was sitting
* STANDING (5): Specimen was standing
* LAYING (6): Specimen was laying

# --- Variables used in script ´run_analysis.R´ : ---
## Setup:
* newwd <- Define working directory containing the dataset

## Data import / handling:
* x_test <- X_test data file from test set ("test/X_test.txt")
* y_test <- Vector containing Tests performed in test set ("test/y_test.txt")
* subject_test <- subject ids in test set ("test/subject_test.txt")
* test <- whole test dataset containing subjects in first column, tests in second and obtained data in the following columns

* x_train <- X_train data file from train set ("train/X_train.txt")
* y_train <- Vector containing Tests performed in train set ("train/y_train.txt")
* subject_train <- subject ids in train set ("train/subject_train.txt")
* train <- whole test dataset containing subjects in first column, tests in second and obtained data in the following columns

* all <- data combined from train and test datasets

* column <- column names from dataset. ("features.txt")
* all.column <- all column names including subject and test for the first two columns

## Calculation of means, generation of tidy dataset
* tidy <- subsetting of all dataset to only contain mean and std columns
* tidy.dt <- datatable of tidy

## Add activity labels
* labels <- Information on performed activities from activity_labels.txt file
