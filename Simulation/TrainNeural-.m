%% 

digitDatasetPath = fullfile(matlabroot,'toolbox','nnet','nndemos', ...
    'nndatasets','SystemDataset');
imds = imageDatastore(digitDatasetPath, ...
    'IncludeSubfolders',true,'LabelSource','foldernames');
%% 
% 
%%
figure;
perm = randperm(15000,20);
for i = 1:20
    subplot(4,5,i);
    imshow(imds.Files{perm(i)});
end
%% 
% 
%%
labelCount = countEachLabel(imds);
%% 
% 
%%
img = readimage(imds,1);
size(img)
%% 
%%
numTrainFiles = 1875;
[imdsTrain,imdsValidation] = splitEachLabel(imds,numTrainFiles,'randomize');
%% 
%%
layers = [
    imageInputLayer([96 96 3])
    
    convolution2dLayer(6,32,'Padding',0,'Stride',2)
    batchNormalizationLayer
    reluLayer
 
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(4,16,'Padding',0,'Stride',2)
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    onvolution2dLayer(2,8,'Padding',0, 'Stride',1)
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer];
%% 
% **

options = trainingOptions('sgdm', ...
    'MaxEpochs',60, ...
    'InitialLearnRate',1e-4, ...
    'ValidationData',imdsValidation, ...
    'ValidationFrequency',30, ...
    'Verbose',false, ...
    'Plots','training-progress');

%%
net = trainNetwork(imdsTrain,layers,options);
%% 
%%
YPred = classify(net,imdsValidation);
YValidation = imdsValidation.Labels;

accuracy = sum(YPred == YValidation)/numel(YValidation);