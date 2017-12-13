clc;
clear;
M = csvread('ratings.csv');
temp_M = M;
num = 1000;
test_rate = zeros(num,3);
k = 1;% total number of training
i = 2;% to search all the required data
while k~=num+1
    if temp_M(i,1)==k;
        test_rate(k,:) = temp_M(i,1:3);
        temp_M(i,:)=[];
        k = k + 1;
    end
    i = i + 1;
end
score = test_rate(:,3);
to_save = test_rate(:,1:2);
csvwrite('test_rate.csv',to_save);
csvwrite('test_rating.csv',temp_M);
save('score','score');
% datatable = importdata('test_rate.txt'); % importdata will import string
% type digit, or it will loss digit
