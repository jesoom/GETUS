clear all,
close all,
clc,
% ####################################################################
% A code for water saturation of geophysical part of GETUS course    #
% Fall 2022                                                          #
% POLIMI, LECOO CAMPUS                                               #
% Civil Engineering for Risk Mitigation                              #
% WRITED BY JASEM AVAZ NASAB                                         #
% ####################################################################
X=xlsread('SwS.xlsx','T0','A2:A44');
Y=-xlsread('SwS.xlsx','T7','G2:G8');
Yg=-xlsread('SwS.xlsx','T7','G10:G16');
C=xlsread('SwS.xlsx','T5','I2:AY8');
Sw=pcolor(X,Y,C);
caxis([0 1]);
hold on
xticks(X);
yticks(Yg);
grid on;
% yticks(Yg);
colormap(flipud(jet));
xlabel('X distace(m)');
ylabel('Depth(m)');
set(gca, 'ydir', 'normal');
set(gca,'xaxislocation','top');
set(gca,'xticklabelrotation',90);
set(gca,'xminortick','on');
title('Saturation at T5');