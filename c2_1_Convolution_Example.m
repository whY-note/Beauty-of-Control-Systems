%% c2_1_Convolution_Example.m
%% 卷积的例子
clear all;
close all;
clc;

% 读取冲击响应
% 本例中是来自与浴缸里面的拍手
IR= audioread('c2_1_Convolution_Example_annex\IR.wav');
% 读取原声音文件
talk = audioread ('c2_1_Convolution_Example_annex\talk.wav');

% 将冲击响应与原声音文件做卷积，两个声道
mix(:,1) = conv(talk(:,1), IR(:,1));
mix(:,2) = conv(talk(:,2), IR(:,2));

% 播放原声音声音
sound (talk,44100);
pause  (1);
% 播放冲击响应
sound (IR,44100);
pause  (1);
% 播放卷积后声音
sound (mix,44100);
