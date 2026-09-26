
clear; clc; close all;


x = 1:10;      
nx = 0:length(x)-1; 

h = [1,1,1,1,1,1,1,1,1,1,1,1];        
nh = 0:length(h)-1; 


y = conv(x, h);
ny = (nx(1)+nh(1)) : (nx(end)+nh(end));


subplot(3,1,1);
stem(nx, x, 'filled');
title('序列 x[n]');
xlabel('n'); ylabel('幅度'); grid on;

subplot(3,1,2);
stem(nh, h, 'filled');
title('序列 h[n]');
xlabel('n'); ylabel('幅度'); grid on;

subplot(3,1,3);
stem(ny, y, 'filled','r');
title('卷积输出 y[n] = x[n] * h[n]');
xlabel('n'); ylabel('幅度'); grid on;


disp('x[n]：'); disp(x);
disp('h[n]：'); disp(h);
disp('卷积y[n]：'); disp(y);
