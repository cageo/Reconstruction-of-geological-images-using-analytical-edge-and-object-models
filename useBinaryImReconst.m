%% Binary image reconstruction using linear edge and object models
%% Mohammad Javad Abdollahifard, Sadegh Ahmadi, Tafresh University, 2015
clc
clear,
close all
tic
% load Im_1_percent_sampling.mat %channel image
load Im_2_percent_sampling.mat
% load Im_3_percent_sampling.mat
% load Im_5_percent_sampling.mat
%load Im_8_percent_sampling.mat
% load Im_16_percent_sampling.mat


% load Im_pic2_1_percent_sampling.mat
% load Im_pic2_2_percent_sampling.mat
% load Im_pic2_3_percent_sampling.mat
% load Im_pic2_5_percent_sampling.mat
% load Im_pic2_8_percent_sampling.mat
% load Im_pic2_16_percent_sampling.mat


% load Im_pic3_1_percent_sampling.mat   %Ganges delta, Bangladesh image
% load Im_pic3_2_percent_sampling.mat
% load Im_pic3_3_percent_sampling.mat
% load Im_pic3_5_percent_sampling.mat
% load Im_pic3_8_percent_sampling.mat
% load Im_pic3_16_percent_sampling.mat
Im=Is;
figure
imshow(Im*.5+.5)
title('sampled image')

options.step=1;% step determines the overlap, set to 1 for maximum overlap
options.windowsize=[19,19];
options.lambda=1;
options.eta=15;
options.eps=.1;% tolerable error for GD stopping condition
options.gdmaxiters=200;% GD maximum number of iterations
options.iters=1;% the number of iterations for the main algorithm
options.model='CCM';%ULEM, UCM or CCM
[Ic]=BinaryImReconst(Im,options);

toc