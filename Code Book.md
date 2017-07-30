The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc-xyz and tgyro-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc-xyz and tgravityacc-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain jerk signals (tbodyaccjerk-xyz and tbodygyrojerk-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-xyz, fbodyaccjerk-xyz, fbodygyro-xyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the x, y and z directions.
tbodyacc-xyz
tgravityacc-xyz
tbodyaccjerk-xyz
tbodygyro-xyz
tbodygyrojerk-xyz
tbodyaccmag
tgravityaccmag
tbodyaccjerkmag
tbodygyromag
tbodygyrojerkmag
fbodyacc-xyz
fbodyaccjerk-xyz
fbodygyro-xyz
fbodyaccmag
fbodyaccjerkmag
fbodygyromag
fbodygyrojerkmag


The set of variables that were estimated from these signals are: 
mean: mean value
std: Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:
gravitymean
tbodyaccmean
tbodyaccjerkmean
tbodygyromean
tbodygyrojerkmean


Moreover, there are 3 other variables as below:
label - list of the training and test labels (viz., 1-6)
activity_label - the activity corresponding to the label (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING)
subject - the label of the subject who performed the activity for each window sample. Its range is from 1 to 30.


The complete list of variables of each feature vector is provided below:

1. tbodyaccmeanx
2. tbodyaccmeany
3. tbodyaccmeanz
4. tbodyaccstdx
5 tbodyaccstdy
6 tbodyaccstdz
7 tgravityaccmeanx
8 tgravityaccmeany
9 tgravityaccmeanz
10 tgravityaccstdx
11 tgravityaccstdy
12 tgravityaccstdz
13 tbodyaccjerkmeanx
14 tbodyaccjerkmeany
15 tbodyaccjerkmeanz
16 tbodyaccjerkstdx
17 tbodyaccjerkstdy
18 tbodyaccjerkstdz
19 tbodygyromeanx
20 tbodygyromeany
21 tbodygyromeanz
22 tbodygyrostdx
23 tbodygyrostdy
24 tbodygyrostdz
25 tbodygyrojerkmeanx
26 tbodygyrojerkmeany
27 tbodygyrojerkmeanz
28 tbodygyrojerkstdx
29 tbodygyrojerkstdy
30 tbodygyrojerkstdz
31 tbodyaccmagmean
32 tbodyaccmagstd
33 tgravityaccmagmean
34 tgravityaccmagstd
35 tbodyaccjerkmagmean
36 tbodyaccjerkmagstd
37 tbodygyromagmean
38 tbodygyromagstd
39 tbodygyrojerkmagmean
40 tbodygyrojerkmagstd
41 fbodyaccmeanx
42 fbodyaccmeany
43 fbodyaccmeanz
44 fbodyaccstdx
45 fbodyaccstdy
46 fbodyaccstdz
47 fbodyaccmeanfreqx
48 fbodyaccmeanfreqy
49 fbodyaccmeanfreqz
50 fbodyaccjerkmeanx
51 fbodyaccjerkmeany
52 fbodyaccjerkmeanz
53 fbodyaccjerkstdx
54 fbodyaccjerkstdy
55 fbodyaccjerkstdz
56 fbodyaccjerkmeanfreqx
57 fbodyaccjerkmeanfreqy
58 fbodyaccjerkmeanfreqz
59 fbodygyromeanx
60 fbodygyromeany
61 fbodygyromeanz
62 fbodygyrostdx
63 fbodygyrostdy
64 fbodygyrostdz
65 fbodygyromeanfreqx
66 fbodygyromeanfreqy
67 fbodygyromeanfreqz
68 fbodyaccmagmean
69 fbodyaccmagstd
70 fbodyaccmagmeanfreq
71 fbodybodyaccjerkmagmean
72 fbodybodyaccjerkmagstd
73 fbodybodyaccjerkmagmeanfreq
74 fbodybodygyromagmean
75 fbodybodygyromagstd
76 fbodybodygyromagmeanfreq
77 fbodybodygyrojerkmagmean
78 fbodybodygyrojerkmagstd
79 fbodybodygyrojerkmagmeanfreq
80 angletbodyaccmeangravity
81 angletbodyaccjerkmeangravitymean
82 angletbodygyromeangravitymean
83 angletbodygyrojerkmeangravitymean
84 anglexgravitymean
85 angleygravitymean
86 anglezgravitymean
87 label
88 activity_label
89 subject