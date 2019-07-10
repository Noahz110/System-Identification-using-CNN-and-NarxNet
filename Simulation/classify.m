%load('My_Classification.mat')
% digitDatasetPath = fullfile(matlabroot,'toolbox','nnet', ...
%     'nndemos','nndatasets','SystemDataset');
% imds = imageDatastore(digitDatasetPath, ...
%     'IncludeSubfolders',true, ...
%     'LabelSource','foldernames');

I = imread('test2.png'); %anh can nhan dang
%figure
%imshow(I)

[label,probs] = classify(net,I)
prob = 100*max(probs)
figure
imshow(I)
results=[char(label),',  ', num2str(prob) ,'%'];

%title(char(label))
title(results)