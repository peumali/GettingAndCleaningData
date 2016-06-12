# CodeBook

## Feature Selection 
The features selected for the original dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## Analysis
Out of the various measurements recorded in the original dataset, only mean and standard deviation measurements were taken into account during this analysis. The final dataset contains 68 variables with a record for the average of each mean and standard deviation measurement for each activity and each subject is created.

## The following variables were calculated during the analysis that was performed during this assignment:

Time and Frequency measurements have Time and Freq as prefixes respectively. Whether it is a mean or a standard deviation( shown as std) is also mentioned in the variable name. 
From the 3rd variable onwards in the following list, all the values are double and has the average value for each activity and subject.

1. activity : One of the six activies (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Stores as a Factor with 6 levels.
2. subject : Integer. Id of the subject in the group of 30 volunteers within an age bracket of 19-48 years. 
3. TimeBodyAcc.mean.X
4. TimeBodyAcc.mean.Y
5. TimeBodyAcc.mean.Z
6. TimeBodyAcc.std.X
7. TimeBodyAcc.std.Y
8. TimeBodyAcc.std.Z
9. TimeGravityAcc.mean.X
10. TimeGravityAcc.mean.Y
11. TimeGravityAcc.mean.Z
12. TimeGravityAcc.std.X
13. TimeGravityAcc.std.Y
14. TimeGravityAcc.std.Z
15. TimeBodyAccJerk.mean.X
16. TimeBodyAccJerk.mean.Y
17. TimeBodyAccJerk.mean.Z
18. TimeBodyAccJerk.std.X
19. TimeBodyAccJerk.std.Y
20. TimeBodyAccJerk.std.Z
21. TimeBodyGyro.mean.X
22. TimeBodyGyro.mean.Y
23. TimeBodyGyro.mean.Z
24. TimeBodyGyro.std.X
25. TimeBodyGyro.std.Y
26. TimeBodyGyro.std.Z
27. TimeBodyGyroJerk.mean.X
28. TimeBodyGyroJerk.mean.Y
29. TimeBodyGyroJerk.mean.Z
30. TimeBodyGyroJerk.std.X
31. TimeBodyGyroJerk.std.Y
32. TimeBodyGyroJerk.std.Z
33. TimeBodyAccMag.mean
34. TimeBodyAccMag.std
35. TimeGravityAccMag.mean
36. TimeGravityAccMag.std
37. TimeBodyAccJerkMag.mean
38. TimeBodyAccJerkMag.std
39. TimeBodyGyroMag.mean
40. TimeBodyGyroMag.std
41. TimeBodyGyroJerkMag.mean
42. TimeBodyGyroJerkMag.std
43. FreqBodyAcc.mean.X
44. FreqBodyAcc.mean.Y
45. FreqBodyAcc.mean.Z
46. FreqBodyAcc.std.X
47. FreqBodyAcc.std.Y
48. FreqBodyAcc.std.Z
49. FreqBodyAccJerk.mean.X
50. FreqBodyAccJerk.mean.Y
51. FreqBodyAccJerk.mean.Z
52. FreqBodyAccJerk.std.X
53. FreqBodyAccJerk.std.Y
54. FreqBodyAccJerk.std.Z
55. FreqBodyGyro.mean.X
56. FreqBodyGyro.mean.Y
57. FreqBodyGyro.mean.Z
58. FreqBodyGyro.std.X
59. FreqBodyGyro.std.Y
60. FreqBodyGyro.std.Z
61. FreqBodyAccMag.mean
62. FreqBodyAccMag.std
63. FreqBodyBodyAccJerkMag.mean
64. FreqBodyBodyAccJerkMag.std
65. FreqBodyBodyGyroMg.mean
66. FreqBodyBodyGyroMag.std
67. FreqBodyBodyGyroJerkMag.mean
68. FreqBodyBodyGyroJerkMag.std