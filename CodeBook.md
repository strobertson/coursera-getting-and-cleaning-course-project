Study design
============

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the
most advanced algorithms to attract new users. The data linked to from
the course website represent data collected from the accelerometers from
the Samsung Galaxy S smartphone. A full description is available at the
site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Source
------

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition
Using Smartphones. 21th European Symposium on Artificial Neural
Networks, Computational Intelligence and Machine Learning, ESANN 2013.
Bruges, Belgium 24-26 April 2013.

Raw data collection and code book
=================================

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

Structure of raw data
=====================

The raw data was split into test and train. Test and train data is
comprised of 6 .txt files:

-   X\_test.txt
-   y\_test.txt
-   subject\_test.txt
-   X\_train.txt
-   y\_train.txt
-   subject\_train.txt

Alongside the test and train data two additional files were provided
that provided lables for the features and activities:

-   features\_info.txt
-   activity\_labels.txt

Processing applied to raw data
==============================

The processing of the raw data is done by the run\_analysis.R script.
The overview of the actions performed by the function are:

1.  Merges the training and the test sets to create one data set.

2.  Appropriately labels the data set with descriptive variable names.

3.  Uses descriptive activity names to name the activities in the data
    set

4.  Extracts only the measurements on the mean and standard deviation
    for each measurement.

5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.

The output from the script is saved in a file called tidy\_data.txt

tidy\_data.txt overview
=======================

The dataset examined has the following dimensions:

<table style="width:46%;">
<colgroup>
<col width="34%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Number of observations</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Number of variables</td>
<td align="right">81</td>
</tr>
</tbody>
</table>

Codebook summary table
======================

<table>
<colgroup>
<col width="8%" />
<col width="43%" />
<col width="10%" />
<col width="11%" />
<col width="10%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Label</th>
<th align="left">Variable</th>
<th align="left">Class</th>
<th align="right"># unique values</th>
<th align="center">Missing</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#subjectid">subjectId</a></strong></td>
<td align="left">integer</td>
<td align="right">30</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#activity">activity</a></strong></td>
<td align="left">factor</td>
<td align="right">6</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-mean-x">tBodyAcc-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-mean-y">tBodyAcc-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-mean-z">tBodyAcc-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-std-x">tBodyAcc-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-std-y">tBodyAcc-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyacc-std-z">tBodyAcc-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-mean-x">tGravityAcc-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-mean-y">tGravityAcc-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-mean-z">tGravityAcc-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-std-x">tGravityAcc-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-std-y">tGravityAcc-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityacc-std-z">tGravityAcc-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-mean-x">tBodyAccJerk-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-mean-y">tBodyAccJerk-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-mean-z">tBodyAccJerk-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-std-x">tBodyAccJerk-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-std-y">tBodyAccJerk-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerk-std-z">tBodyAccJerk-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-mean-x">tBodyGyro-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-mean-y">tBodyGyro-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-mean-z">tBodyGyro-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-std-x">tBodyGyro-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-std-y">tBodyGyro-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyro-std-z">tBodyGyro-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-mean-x">tBodyGyroJerk-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-mean-y">tBodyGyroJerk-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-mean-z">tBodyGyroJerk-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-std-x">tBodyGyroJerk-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-std-y">tBodyGyroJerk-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerk-std-z">tBodyGyroJerk-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccmag-mean">tBodyAccMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccmag-std">tBodyAccMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityaccmag-mean">tGravityAccMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tgravityaccmag-std">tGravityAccMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerkmag-mean">tBodyAccJerkMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodyaccjerkmag-std">tBodyAccJerkMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyromag-mean">tBodyGyroMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyromag-std">tBodyGyroMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerkmag-mean">tBodyGyroJerkMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#tbodygyrojerkmag-std">tBodyGyroJerkMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-mean-x">fBodyAcc-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-mean-y">fBodyAcc-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-mean-z">fBodyAcc-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-std-x">fBodyAcc-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-std-y">fBodyAcc-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-std-z">fBodyAcc-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-meanfreq-x">fBodyAcc-meanFreq()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-meanfreq-y">fBodyAcc-meanFreq()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyacc-meanfreq-z">fBodyAcc-meanFreq()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-mean-x">fBodyAccJerk-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-mean-y">fBodyAccJerk-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-mean-z">fBodyAccJerk-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-std-x">fBodyAccJerk-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-std-y">fBodyAccJerk-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-std-z">fBodyAccJerk-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-meanfreq-x">fBodyAccJerk-meanFreq()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-meanfreq-y">fBodyAccJerk-meanFreq()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccjerk-meanfreq-z">fBodyAccJerk-meanFreq()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-mean-x">fBodyGyro-mean()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-mean-y">fBodyGyro-mean()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-mean-z">fBodyGyro-mean()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-std-x">fBodyGyro-std()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-std-y">fBodyGyro-std()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-std-z">fBodyGyro-std()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-meanfreq-x">fBodyGyro-meanFreq()-X</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-meanfreq-y">fBodyGyro-meanFreq()-Y</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodygyro-meanfreq-z">fBodyGyro-meanFreq()-Z</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccmag-mean">fBodyAccMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccmag-std">fBodyAccMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodyaccmag-meanfreq">fBodyAccMag-meanFreq()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodyaccjerkmag-mean">fBodyBodyAccJerkMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodyaccjerkmag-std">fBodyBodyAccJerkMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodyaccjerkmag-meanfreq">fBodyBodyAccJerkMag-meanFreq()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyromag-mean">fBodyBodyGyroMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyromag-std">fBodyBodyGyroMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyromag-meanfreq">fBodyBodyGyroMag-meanFreq()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyrojerkmag-mean">fBodyBodyGyroJerkMag-mean()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyrojerkmag-std">fBodyBodyGyroJerkMag-std()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><strong><a href="#fbodybodygyrojerkmag-meanfreq">fBodyBodyGyroJerkMag-meanFreq()</a></strong></td>
<td align="left">numeric</td>
<td align="right">180</td>
<td align="center">0.00 %</td>
<td align="left"></td>
</tr>
</tbody>
</table>

Variable list
=============

subjectId
---------

<table style="width:49%;">
<colgroup>
<col width="36%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">integer</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">30</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">15.5</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">8; 23</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">1; 30</td>
</tr>
</tbody>
</table>

activity
--------

<table style="width:50%;">
<colgroup>
<col width="36%" />
<col width="13%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">factor</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">6</td>
</tr>
<tr class="even">
<td align="left">Mode</td>
<td align="right">&quot;LAYING&quot;</td>
</tr>
</tbody>
</table>

tBodyAcc-mean()-X
-----------------

<table style="width:53%;">
<colgroup>
<col width="36%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.28</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.27; 0.28</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">0.22; 0.3</td>
</tr>
</tbody>
</table>

tBodyAcc-mean()-Y
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.02</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.02; -0.01</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.04; 0</td>
</tr>
</tbody>
</table>

tBodyAcc-mean()-Z
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.11</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.11; -0.1</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.15; -0.08</td>
</tr>
</tbody>
</table>

tBodyAcc-std()-X
----------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.75</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.2</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.63</td>
</tr>
</tbody>
</table>

tBodyAcc-std()-Y
----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.51</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.94; -0.03</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.62</td>
</tr>
</tbody>
</table>

tBodyAcc-std()-Z
----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.65</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.23</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.61</td>
</tr>
</tbody>
</table>

tGravityAcc-mean()-X
--------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.92</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.84; 0.94</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.68; 0.97</td>
</tr>
</tbody>
</table>

tGravityAcc-mean()-Y
--------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.13</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.23; 0.09</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.48; 0.96</td>
</tr>
</tbody>
</table>

tGravityAcc-mean()-Z
--------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.02</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.12; 0.15</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.5; 0.96</td>
</tr>
</tbody>
</table>

tGravityAcc-std()-X
-------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.97</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.95</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; -0.83</td>
</tr>
</tbody>
</table>

tGravityAcc-std()-Y
-------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.96</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.94</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; -0.64</td>
</tr>
</tbody>
</table>

tGravityAcc-std()-Z
-------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.95</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.92</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; -0.61</td>
</tr>
</tbody>
</table>

tBodyAccJerk-mean()-X
---------------------

<table style="width:53%;">
<colgroup>
<col width="36%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.08</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.07; 0.08</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">0.04; 0.13</td>
</tr>
</tbody>
</table>

tBodyAccJerk-mean()-Y
---------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.01</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0; 0.01</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.04; 0.06</td>
</tr>
</tbody>
</table>

tBodyAccJerk-mean()-Z
---------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.01; 0</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.07; 0.04</td>
</tr>
</tbody>
</table>

tBodyAccJerk-std()-X
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.81</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.22</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.54</td>
</tr>
</tbody>
</table>

tBodyAccJerk-std()-Y
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.78</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.15</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.36</td>
</tr>
</tbody>
</table>

tBodyAccJerk-std()-Z
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.88</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.51</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.03</td>
</tr>
</tbody>
</table>

tBodyGyro-mean()-X
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.03</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.05; -0.02</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.21; 0.19</td>
</tr>
</tbody>
</table>

tBodyGyro-mean()-Y
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.07</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.09; -0.06</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.2; 0.03</td>
</tr>
</tbody>
</table>

tBodyGyro-mean()-Z
------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.09</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.07; 0.1</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.07; 0.18</td>
</tr>
</tbody>
</table>

tBodyGyro-std()-X
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.79</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.44</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.27</td>
</tr>
</tbody>
</table>

tBodyGyro-std()-Y
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.8</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.42</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.48</td>
</tr>
</tbody>
</table>

tBodyGyro-std()-Z
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.8</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.31</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.56</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-mean()-X
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.1</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.1; -0.09</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.16; -0.02</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-mean()-Y
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.04</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.05; -0.04</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.08; -0.01</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-mean()-Z
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.05</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.06; -0.05</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.09; -0.01</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-std()-X
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.84</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.46</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.18</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-std()-Y
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.89</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.59</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.3</td>
</tr>
</tbody>
</table>

tBodyGyroJerk-std()-Z
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.86</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.47</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.19</td>
</tr>
</tbody>
</table>

tBodyAccMag-mean()
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.48</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.09</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.64</td>
</tr>
</tbody>
</table>

tBodyAccMag-std()
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.61</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.94; -0.21</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.43</td>
</tr>
</tbody>
</table>

tGravityAccMag-mean()
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.48</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.09</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.64</td>
</tr>
</tbody>
</table>

tGravityAccMag-std()
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.61</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.94; -0.21</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.43</td>
</tr>
</tbody>
</table>

tBodyAccJerkMag-mean()
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.82</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.25</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.43</td>
</tr>
</tbody>
</table>

tBodyAccJerkMag-std()
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.8</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.22</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.45</td>
</tr>
</tbody>
</table>

tBodyGyroMag-mean()
-------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.66</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.22</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.98; 0.42</td>
</tr>
</tbody>
</table>

tBodyGyroMag-std()
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.74</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.36</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.98; 0.3</td>
</tr>
</tbody>
</table>

tBodyGyroJerkMag-mean()
-----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.86</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.99; -0.51</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.09</td>
</tr>
</tbody>
</table>

tBodyGyroJerkMag-std()
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.88</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.58</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.25</td>
</tr>
</tbody>
</table>

fBodyAcc-mean()-X
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.77</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.22</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.54</td>
</tr>
</tbody>
</table>

fBodyAcc-mean()-Y
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.59</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.06</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.52</td>
</tr>
</tbody>
</table>

fBodyAcc-mean()-Z
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.72</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.32</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.28</td>
</tr>
</tbody>
</table>

fBodyAcc-std()-X
----------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.75</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.2</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.66</td>
</tr>
</tbody>
</table>

fBodyAcc-std()-Y
----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.51</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.94; -0.08</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.56</td>
</tr>
</tbody>
</table>

fBodyAcc-std()-Z
----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.64</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.27</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.69</td>
</tr>
</tbody>
</table>

fBodyAcc-meanFreq()-X
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.26</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.39; -0.06</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.64; 0.16</td>
</tr>
</tbody>
</table>

fBodyAcc-meanFreq()-Y
---------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.01</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.08; 0.09</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.38; 0.47</td>
</tr>
</tbody>
</table>

fBodyAcc-meanFreq()-Z
---------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.07</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.04; 0.18</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.52; 0.4</td>
</tr>
</tbody>
</table>

fBodyAccJerk-mean()-X
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.81</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.28</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.47</td>
</tr>
</tbody>
</table>

fBodyAccJerk-mean()-Y
---------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.78</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.2</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.28</td>
</tr>
</tbody>
</table>

fBodyAccJerk-mean()-Z
---------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.87</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.47</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.16</td>
</tr>
</tbody>
</table>

fBodyAccJerk-std()-X
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.83</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.25</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.48</td>
</tr>
</tbody>
</table>

fBodyAccJerk-std()-Y
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.79</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.17</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.35</td>
</tr>
</tbody>
</table>

fBodyAccJerk-std()-Z
--------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.9</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.54</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; -0.01</td>
</tr>
</tbody>
</table>

fBodyAccJerk-meanFreq()-X
-------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.06</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.29; 0.18</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.58; 0.33</td>
</tr>
</tbody>
</table>

fBodyAccJerk-meanFreq()-Y
-------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.23</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.4; -0.05</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.6; 0.2</td>
</tr>
</tbody>
</table>

fBodyAccJerk-meanFreq()-Z
-------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.09</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.31; 0.04</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.63; 0.23</td>
</tr>
</tbody>
</table>

fBodyGyro-mean()-X
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.73</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.34</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.47</td>
</tr>
</tbody>
</table>

fBodyGyro-mean()-Y
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.81</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.97; -0.45</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.33</td>
</tr>
</tbody>
</table>

fBodyGyro-mean()-Z
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.79</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.26</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.49</td>
</tr>
</tbody>
</table>

fBodyGyro-std()-X
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.81</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.48</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.2</td>
</tr>
</tbody>
</table>

fBodyGyro-std()-Y
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.8</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.42</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.65</td>
</tr>
</tbody>
</table>

fBodyGyro-std()-Z
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.82</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.39</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.52</td>
</tr>
</tbody>
</table>

fBodyGyro-meanFreq()-X
----------------------

<table style="width:53%;">
<colgroup>
<col width="36%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.12</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.21; 0</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.4; 0.25</td>
</tr>
</tbody>
</table>

fBodyGyro-meanFreq()-Y
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.16</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.29; -0.04</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.67; 0.27</td>
</tr>
</tbody>
</table>

fBodyGyro-meanFreq()-Z
----------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.05</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.15; 0.04</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.51; 0.38</td>
</tr>
</tbody>
</table>

fBodyAccMag-mean()
------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.67</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.16</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.59</td>
</tr>
</tbody>
</table>

fBodyAccMag-std()
-----------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.65</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.37</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.18</td>
</tr>
</tbody>
</table>

fBodyAccMag-meanFreq()
----------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.08</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.01; 0.17</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.31; 0.44</td>
</tr>
</tbody>
</table>

fBodyBodyAccJerkMag-mean()
--------------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.79</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.19</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.54</td>
</tr>
</tbody>
</table>

fBodyBodyAccJerkMag-std()
-------------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.81</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.27</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.32</td>
</tr>
</tbody>
</table>

fBodyBodyAccJerkMag-meanFreq()
------------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.17</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.05; 0.28</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.13; 0.49</td>
</tr>
</tbody>
</table>

fBodyBodyGyroMag-mean()
-----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.77</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.96; -0.41</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.99; 0.2</td>
</tr>
</tbody>
</table>

fBodyBodyGyroMag-std()
----------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.77</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.95; -0.43</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.98; 0.24</td>
</tr>
</tbody>
</table>

fBodyBodyGyroMag-meanFreq()
---------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.05</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.17; 0.08</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.46; 0.41</td>
</tr>
</tbody>
</table>

fBodyBodyGyroJerkMag-mean()
---------------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.88</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.58</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.15</td>
</tr>
</tbody>
</table>

fBodyBodyGyroJerkMag-std()
--------------------------

<table style="width:56%;">
<colgroup>
<col width="36%" />
<col width="19%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">-0.89</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">-0.98; -0.61</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-1; 0.29</td>
</tr>
</tbody>
</table>

fBodyBodyGyroJerkMag-meanFreq()
-------------------------------

<table style="width:54%;">
<colgroup>
<col width="36%" />
<col width="18%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="right">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Variable type</td>
<td align="right">numeric</td>
</tr>
<tr class="even">
<td align="left">Number of missing obs.</td>
<td align="right">0 (0 %)</td>
</tr>
<tr class="odd">
<td align="left">Number of unique values</td>
<td align="right">180</td>
</tr>
<tr class="even">
<td align="left">Median</td>
<td align="right">0.11</td>
</tr>
<tr class="odd">
<td align="left">1st and 3rd quartiles</td>
<td align="right">0.05; 0.21</td>
</tr>
<tr class="even">
<td align="left">Min. and max.</td>
<td align="right">-0.18; 0.43</td>
</tr>
</tbody>
</table>

Report generation information:

-   Created by Scott Robertson (username: `scottrobertson`).

-   Report creation time: Tue Sep 04 2018 09:20:02

-   Report Was run from directory:
    `/Users/scottrobertson/R Programming/Coursera`

-   dataMaid v1.1.2 \[Pkg: 2018-05-03 from CRAN (R 3.5.1)\]

-   R version 3.5.1 (2018-07-02).

-   Platform: x86\_64-apple-darwin17.7.0 (64-bit)(macOS High Sierra
    10.13.6).

-   Function call:
    `makeDataReport(data = tidy_data, mode = "summarize", file = "codebook",  checks = list(list("showAllFactorLevels")), listChecks = FALSE,  maxProbVals = FALSE, codebook = TRUE, reportTitle = "Codebook for tidy_data")`
