detector = vision.CascadeObjectDetector('trained_model_10_0.1.xml'); % stage: 10, false alarm rate: 0.1
video_in = vision.VideoFileReader("pedestrian1.mp4");
video = vision.VideoPlayer;
while (1)
    videoFrame = video_in();
    bbox = step(detector,videoFrame);
    detectedImg = insertObjectAnnotation(videoFrame,'rectangle',bbox,'Matched');
    video(detectedImg);
end
