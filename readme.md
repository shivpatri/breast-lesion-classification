# A New Features Extraction Method based on Polynomial Regression for the assessment of Breast Lesion Contours.

Adapted from the course project for ECE F266 (Birla Institute of Technology & Science, Pilani, Hyderabad Campus 2014-15)

## Synopsis

Shape of breast Contours are prominent signs to determine malignancy in mammograms. A new algorithm for feature extraction is proposed based on polynomial regression on the signatures of benign and malignant contours. Two features mean absolute error and correlation coefficient were extracted for 57 mammograms of which 32 images were malignant contours and 25 images were benign contours. Three different pattern classifiers Support vector machine with radius basis function as kernel and sigma=0.7, Linear discriminate analysis, Bayes linear classifier methodologies were used for calculation of performance evaluation measures.Our new feature extraction method attained a remarkable recognition accuracy and Area under curve(AUC) of above 89% in all three pattern classifier techniques. Among all the three classifiers Bayes linear classifier gave good recognition accuracy of 96.29% and AUC of 0.9833. 

The complete research work can be found [here](https://ieeexplore.ieee.org/document/7150808).

### Prerequisites

MATLAB 2013B and above.

### Instructions

* The code to extract contours out of mammograms is not avialable yet. Hence I suggest you to use K-means with K = 3 (The tumor, rest of the body and the background) or adaptive thresholding as suggested in this [paper](http://ieeexplore.ieee.org/document/5483233/) for image segmentation and contour extraction. The Dataset should be segregated to 4 categories (Benign-train,Malignant-train,Benign-test,Malignant-test), the GUI prompts you to select the folders.
* The Images folder contains a few sample images containing countours of different cancer types. But the actual training and testing requires much larger dataset.
* The location of the data itself defines the labels, hence there is no need to worry about creating labels.
* Run the classification.m script in MATLAB.

## The Algorithm

* After segmentation of the mammogram and extracting the contours.(Benign and malignanat sample contours)
![beingn](https://user-images.githubusercontent.com/9504327/29873788-2726c9d4-8d84-11e7-9675-8b99eb546fb9.png)     ![malignant](https://user-images.githubusercontent.com/9504327/29873799-2d2476e2-8d84-11e7-86f8-587de9a0a9c8.png)
* Extracting the signatures of the contours (Benign and malignant contours respectively):
![signaturebenign](https://user-images.githubusercontent.com/9504327/29873975-c03a3c78-8d84-11e7-84b0-aab7fe65cc79.PNG)
![signaturecancerous](https://user-images.githubusercontent.com/9504327/29873976-c03be62c-8d84-11e7-99a1-e2be190ad757.PNG)
* After feeding the feature data to SVM classifier:

   ![train test_at_15](https://user-images.githubusercontent.com/9504327/29872413-169a9c8a-8d7f-11e7-8fd6-46dc79fc734e.PNG)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/shivakshit/BenignMalignantClassification/edit/master/LICENSE) file for details
