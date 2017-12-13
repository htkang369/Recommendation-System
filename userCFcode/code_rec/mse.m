clc;
clear;
datatable = importdata('test_rate.txt');
load('score');
err = mean((datatable - score).^2);