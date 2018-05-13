function [ trainedNetwork ] = networkTraining( imds,imdsTest )
aids=augmentedImageDatastore([8,8],imds);
layers = [
    imageInputLayer([8 8 1])
    convolution2dLayer(4,32,'Padding',1)
    batchNormalizationLayer
    reluLayer
    dropoutLayer(0.5)
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(4,64,'Padding',1)
    batchNormalizationLayer
    reluLayer
    dropoutLayer(0.5)
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer];


options = trainingOptions('rmsprop',...
    'ValidationData',imdsTest,...
    'InitialLearnRate',0.001,...
    'ExecutionEnvironment','cpu',...
    'MaxEpochs',15,...
    'ValidationPatience',10000,...
    'MiniBatchSize',128);

trainedNetwork=trainNetwork(aids,layers,options);

end