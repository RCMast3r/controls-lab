clear all;close all; clc
% Down_Payment=linspace(2000,8000,13);
Down_Payment = 6000;
MSRP=31209;
Discount=18.7;
% APR=4.99;
APR = linspace(0.5, 5, 13);
Dealership_Fee=850;
N=60;
 
for i=1:length(APR)
    Monthly_Payment(i)=Car_Price([MSRP,Discount,APR(i),Down_Payment,Dealership_Fee,N]);
end
figure(1)
plot(APR,Monthly_Payment,'--r*')
title('Buying a RAV4 XLE Premium')
xlabel('APR')
ylabel('Monthly Payment')
grid on


function y=Car_Price(in)
MSRP=in(1);%Manufacturer Suggested Retail Price 
Discount=in(2)/100;% Discount on MSRP
APR=in(3)/100/12;%APR per month
Down=in(4);%Down payment
Dealership_Fee=in(5);%Dealership Fee
N=in(6);%Number of Months
tax=0.0679;%Georgia Tax
y=((MSRP*(1-Discount)+Dealership_Fee)*(1+tax)-Down)*APR*(1+APR)^N/((1+APR)^N-1);%Monthly Payment
end