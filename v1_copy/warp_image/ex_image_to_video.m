overlapped_images = dir(fullfile('result_overlapped\flir_v2\UMHE','*.png'));
overlapped_images = {overlapped_images.name};

outputVideo = VideoWriter(fullfile('result_overlapped_video\flir_v2\UMHE\flir_v2_UMHE.avi'));
outputVideo.FrameRate = 10;
open(outputVideo)

f = waitbar(0, 'Starting');

for ii = 1:length(overlapped_images)
    img = imread(fullfile('result_overlapped\flir_v2\UMHE',overlapped_images{ii}));
    writeVideo(outputVideo,img)
   
    waitbar(ii/length(overlapped_images), f, sprintf('Progress: %d %%', floor(ii/length(overlapped_images)*100)));
    pause(0.01);

end

close(outputVideo)
close(f)