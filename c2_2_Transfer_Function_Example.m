%% c2_2_Transfer_Function_Example.m
%% 传递函数举例

clear all;
close all;
clc;

% define Transfer Function 定义传递函数
% 定义传递函数的方法1
s=tf('s');
G_s=(s+1)/(s+3); % 用方法1 定义系统传递函数

% 定义传递函数的方法2
C_s =  tf([1],[1 2]); % 用方法2 定义系统传递函数
% 等价于 C_s = 1/(s+2);

% 使用feedback语句定义反馈闭环传递函数
Gcl = feedback(C_s*G_s,1);

%% 拓展
% 单位阶跃响应图
figure;
step(Gcl);
title('Step Response of Closed-Loop System');

% 单位冲激响应图
figure;
impulse(Gcl);
title('Impulse Response of Closed-Loop System')

% 伯德图
figure;
bode(Gcl)
grid on
title('Bode Plot of Closed-Loop System')

% 根轨迹图
figure;
rlocus(C_s*G_s)
title('Root Locus of Open-Loop System')

