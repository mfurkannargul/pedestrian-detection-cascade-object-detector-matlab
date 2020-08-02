positive_ins = pos_roi_mit;
pos_dir = fullfile('C:\Users\furka\Desktop\Internship - Signalton Technology\MATLAB\Cascade Classifier\positive');
addpath(pos_dir);
neg_dir = fullfile('C:\Users\furka\Desktop\Internship - Signalton Technology\MATLAB\Cascade Classifier\negative');

trainCascadeObjectDetector('trained_model_10_0.1.xml', positive_ins,neg_dir, ...
    'NumCascadeStage', 10,'FalseAlarmRate',0.1);