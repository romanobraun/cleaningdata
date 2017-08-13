# Cleaningdata

## > Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. (Anguita et al., 2013)

This script will fuse the train and test dataset including the specimen numbers and tests performed. Then, I will add the column names defined in the dataset to the fused file.
All mean and sd columns will be fused to a new dataset and the mean values per user and test performed will be calculated for each variable. The numbers defined in the activities column will be changed to words describing the particular activity performed. The tidy dataset will be saved as `tidy.csv`.

Original files can be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Please review information found on this website for further information on study design.

Citation: 
> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013 

## Repository
* `README.md`: Description of project and instructions for use
* `CodeBook.md`: Explanation of the variables used in the code ´run_analysis.R´ 
* `run.analysis.R`: R file providing the code to run the analysis
* `tidy.txt`: Output file containing the tidy data

## Instructions
1) Place run_analysis.R in the folder of the dataset containing the subfolders test and train.
2) Define the folder as working directory within the .R script ´run_analysis.R´ on line 3.
3) Run the script
4) Tidy dataset ´tidy.txt´ is included in the repository.

## Used software versions
* R version 3.3.2 (2016-10-31)
* Platform: x86_64-apple-darwin13.4.0 (64-bit)
* Running under: macOS Sierra 10.12.6
* R Studio: 1.0.13
* dplyr: 0.7.1

## Disclaimer
Code until every human is well!
Roman
