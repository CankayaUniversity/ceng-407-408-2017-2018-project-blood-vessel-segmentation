function [ trainedNetwork ] = networkTraining( imds,imdsTest )
aids=augmentedImageDatastore([16,16],imds);
layers = [
    imageInputLayer([16 16 1])
    convolution2dLayer(6,32,'Padding',1)
    batchNormalizationLayer
    reluLayer
    dropoutLayer(0.9)
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(6,64,'Padding',1)
    batchNormalizationLayer
    reluLayer
    dropoutLayer(0.9)
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer];


options = trainingOptions('rmsprop',...
    'ValidationData',imdsTest,...
    'InitialLearnRate',0.001,...
    'ExecutionEnvironment','cpu',...
    'MaxEpochs',100,...
    'ValidationPatience',10000,...
    'MiniBatchSize',256);

trainedNetwork=trainNetwork(aids,layers,options);

end