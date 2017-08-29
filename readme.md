# A New Features Extraction Method based on Polynomial Regression for the assessment of Breast Lesion Contours.

Adapted from the course project for ECE F266 (Birla Institute of Technology & Science, Pilani, Hyderabad Campus 2014-15)

## Synopsis

Shape of breast Contours are prominent signs to determine malignancy in mammograms. A new algorithm for feature extraction is proposed based on polynomial regression on the signatures of benign and malignant contours. Two features mean absolute error and correlation coefficient were extracted for 57 mammograms of which 32 images were malignant contours and 25 images were benign contours. Three different pattern classifiers Support vector machine with radius basis function as kernel and sigma=0.7, Linear discriminate analysis, Bayes linear classifier methodologies were used for calculation of performance evaluation measures.Our new feature extraction method attained a remarkable recognition accuracy and Area under curve(AUC) of above 89% in all three pattern classifier techniques. Among all the three classifiers Bayes linear classifier gave good recognition accuracy of 96.29% and AUC of 0.9833.

### Prerequisites

MATLAB 2013B and above.

### Deployment

* The code to extract contours out of mammograms is not avialable yet. Hence I suggest you to use K-means with K = 3 (The tumor, rest of the body and the background) for image segmentation and contour extraction. The Dataset should be segregated to 4 categories (Benign-train,Malignant-train,Benign-test,Malignant-test), the GUI prompts you to select the folders.
* Run the classification.m script in MATLAB.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Thanks to Mrs. Spandana Paramkusham for extracting the contours from the mammograms using image segmentation and conducting all the performance evaluation tests. I also thank Dr. [K.M.M Rao](http://www.drkmm.com/) and [Dr. B.V.V.S.N Prabhakar Rao](http://universe.bits-pilani.ac.in/Hyderabad/bvvsnprabhakarrao/Profile) for providing invaluable guidance.
