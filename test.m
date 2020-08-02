detector = vision.CascadeObjectDetector('trained_model_mit_7_0.07.xml'); % stage: 10, false alarm rate: 0.1
video_in = vision.VideoFileReader("pedestrian1.mp4");
video = vision.VideoPlayer;
while (1)
    videoFrame = video_in();
    bbox = step(detector,videoFrame);
    detectedImg = insertObjectAnnotation(videoFrame,'rectangle',bbox,'Matched');
    video(detectedImg);
end

% detector = vision.CascadeObjectDetector('trained_model.xml');
% video = VideoReader('fourway.avi');
% % detector = vision.CascadeObjectDetector('trained_model_10_0.1.xml');
% % while hasFrame(video)
% while (1)
%     vf = readFrame(video);
%     bbox = step(detector,vf);
%     detectedImg = insertObjectAnnotation(vf,'rectangle',bbox,'Matched');
%     imshow(detectedImg);
% end



% img = imread('pedestrian1.png');
% detector = vision.CascadeObjectDetector('trained_model.xml');
% bbox = step(detector,img);
% detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'Matched');
% imshow(detectedImg);