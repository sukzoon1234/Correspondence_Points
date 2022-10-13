thermal_list = dir('flir_v1_val\PreviewData\*.jpg');
raw_rgb_list = dir('flir_v1_val\RGB\*.jpg');
num = 1013   % 이미지 갯수

f = waitbar(0, 'Starting');

for c = 1:num;
thermal_list(c).name;
img_num = split(thermal_list(c).name,'_');

tmp=split(img_num{2},'.');
n = string(tmp{1});


raw_rgb = imread('flir_v1_val\RGB\FLIR_' +n+ '_RGB.jpg');
% thermal = imread('flir_v1_val\PreviewData\FLIR_' +n+ '.jpg');

warped_rgb = imread('result_warped_images\flir_v1\NeMAR\FLIR_' +n+ '_RGB.jpg');
% overlap = imfuse(thermal,warped_rgb,'falsecolor','Scaling','joint','ColorChannels',[2 1 2]);
% rgb = imread('flir_v1_val\RGB\FLIR_' +n+ '_RGB.jpg');
overlap = imfuse(raw_rgb,warped_rgb,'falsecolor','Scaling','joint','ColorChannels',[2 1 2]);


imwrite(overlap,'result_overlapped\flir_v1\NeMAR\' +n+ '.png');

waitbar(c/num, f, sprintf('Progress: %d %%', floor(c/num*100)));
pause(0.1);

end

close(f)