# A New Features Extraction Method based on Polynomial Regression for the assessment of Breast Lesion Contours.

Adapted from the course project for ECE F266 (Birla Institute of Technology & Science, Pilani, Hyderabad Campus 2013-14)

## Synopsis

Shape of breast Contours are prominent signs to determine malignancy in mammograms. A new algorithm for feature extraction is proposed based on polynomial regression on the signatures of benign and malignant contours. Two features mean absolute error and correlation coefficient were extracted for 57 mammograms of which 32 images were malignant contours and 25 images were benign contours. Three different pattern classifiers Support vector machine with radius basis function as kernel and sigma=0.7, Linear discriminate analysis, Bayes linear classifier methodologies were used for calculation of performance evaluation measures.Our new feature extraction method attained a remarkable recognition accuracy and Area under curve(AUC) of above 89% in all three pattern classifier techniques. Among all the three classifiers Bayes linear classifier gave good recognition accuracy of 96.29% and AUC of 0.9833.

### Prerequisites

Tested to be working on MATLAB 2012B and 2013A.

### Deployment

* Dataset should be segregated to 4 categories (Benign-train,Malignant-train,Benign-test,Malignant-test), the GUI prompts you to select the folders.
* Run the classification.m script in MATLAB.

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
