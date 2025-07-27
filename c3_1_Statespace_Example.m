%% c3_1_Statespace_Example.m
%% 状态空间例子
% 这个例子是弹簧阻尼系统

clear all;
close all;
clc;

% 弹簧阻尼系统参数
m = 1; % 木块质量
k = 1; % 弹簧系数
b = 1; % 阻尼系数

% 系统矩阵
A = [[   0,     1];
     [-k/m, -b/m]];

% 输入矩阵
B = [0; 1/m];

% 输出矩阵
C = [1 0];

% 直接传递矩阵D
D = 0;

% 用状态空间方程 定义系统
sys = ss(A,B,C,D);

% 使用ss2tf语句构建 传递函数
[num,den] = ss2tf(A,B,C,D);
% num是分子多项式的系数，den是分母多项式的系数
G_s=tf(num,den);

%% 拓展
% 单位阶跃响应图
figure;
step(sys);
title('Step Response');

% 单位冲激响应图
figure;
impulse(sys);
title('Impulse Response')

% 伯德图
figure;
bode(sys)
grid on
title('Bode Plot')

% 根轨迹图
figure;
rlocus(sys)
title('Root Locus')

