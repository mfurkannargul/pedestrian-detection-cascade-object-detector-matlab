positive_ins = pos91;
pos_dir = fullfile('positive');     % the location of folder of positive images
addpath(pos_dir);
neg_dir = fullfile('negative');     % the location of folder of negative images

trainCascadeObjectDetector('trained_model_91_3205.xml', positive_ins, neg_dir, ...
    'NumCascadeStage',7,'FalseAlarmRate',0.15);
