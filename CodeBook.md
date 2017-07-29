# --- CODEBOOK ---

# Variables used:
Setup:
newwd <- Define working directory containing the dataset

# Data import / handling:
x_test <- X_test data file from test set ("test/X_test.txt")
y_test <- Vector containing Tests performed in test set ("test/y_test.txt")
subject_test <- subject ids in test set ("test/subject_test.txt")
test <- whole test dataset containing subjects in first column, tests in second and obtained data in the following columns

x_train <- X_train data file from train set ("train/X_train.txt")
y_train <- Vector containing Tests performed in train set ("train/y_train.txt")
subject_train <- subject ids in train set ("train/subject_train.txt")
train <- whole test dataset containing subjects in first column, tests in second and obtained data in the following columns

all <- data combined from train and test datasets

column <- column names from dataset. ("features.txt")
all.column <- all column names including subject and test for the first two columns

# Calculation of means, generation of tidy dataset
tidy <- subsetting of all dataset to only contain mean and std columns
tody.dt <- datatable of tidy
