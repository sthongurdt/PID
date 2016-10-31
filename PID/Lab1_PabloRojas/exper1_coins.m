clc; 
clear all;
close all;

% I=imread('coins.png');
% whos I
% imwrite(I, 'coins.png');
% imwrite(I, 'coins.jpg');
% imwrite(I, 'coins5.jpg', 'quality', 5);
r1=200;
r2=120;
n=256;
I1=zeros(n);
I2=zeros(n);
x1=linspace(-50,50,n);
y1=linspace(-50,50,n);
x2=linspace(-50,50,n);
y2=linspace(-50,50,n);
[mx1 my1]=meshgrid(x1,y1);
[mx2 my2]=meshgrid(x2,y2);
I1(((mx1.^2)+(my1.^2))<r1)=1;
I2(((mx2.^2)+(my2.^2))<r2)=1;
I=I1-I2;
imshow(I)