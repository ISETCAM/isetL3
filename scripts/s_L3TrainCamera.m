%% s_L3TrainCamera
%
% This script trains and creates an L3 camera.
%
% Nearly all of the default values from L3Initialize are used.
% L3Train.m does the actual training.
%
% (c) Stanford VISTA Team

%% Start ISET
ieInit

%% Create and initialize L3 structure
L3 = L3Create;
L3 = L3Initialize(L3);  % use default parameters

%% Adjust patch size from 9 to 5 pixels for faster computation
blockSize = 5;               % Size of the solution patch used by L3
L3 = L3Set(L3,'block size', blockSize);

%% Perform training
L3 = L3Train(L3);

%% Setup L3 camera
camera = L3CameraCreate(L3);

%% Use the camera with s_L3Render, cameraCompute, or cameraComputesRGB
