positive_ins = pos_roi_mit;
pos_dir = fullfile('positive');     % the location of folder of positive images
addpath(pos_dir);
neg_dir = fullfile('negative');     % the location of folder of negative images

trainCascadeObjectDetector('trained_model_10_0.1.xml', positive_ins,neg_dir, ...
    'NumCascadeStage', 10,'FalseAlarmRate',0.1);
