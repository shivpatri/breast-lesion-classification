function [accuracy_tr,accuracy_ts,specificity_tr,specificity_ts,sensitivity_tr,sensitivity_ts] = confusion_matrix(tsb,tsm,trb,trm)

% Calculating the confusion matrix

tp_ts = sum(tsb);

% True Positives of Test Data

tn_ts = length(tsm)-sum(tsm);

% True Negatives of Test Data

fp_ts = length(tsb)-sum(tsb);

% False Positives of Test Data

fn_ts = sum(tsm);

% False Negatives of Test Data

tp_tr = sum(trb);

% True Positives of Train Data

tn_tr = length(trm)-sum(trm);

% True Negatives of Train Data

fp_tr = length(trb)-sum(trb);

% False Positives of Train Data

fn_tr = sum(trm);

% False Negatives of Train Data

accuracy_ts = (tn_ts + tp_ts)*100/(length(tsb)+length(tsm));
accuracy_tr = (tn_tr + tp_tr)*100/(length(trb)+length(trm));

% Accuracy of test and train data

sensitivity_ts = tp_ts/length(tsb);
sensitivity_tr = tp_tr/length(trb);

% Sensitivity of test and train data

specificity_ts = tn_ts/length(tsm);
specificity_tr = tn_tr/length(trm);

% Specificity of test and train data