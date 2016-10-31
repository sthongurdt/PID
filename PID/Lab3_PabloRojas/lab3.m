clc; clear all; close all;

%-------------------------------------------------------------------------
% Punto 3.1

I=fix(rgb2gray(im2double(imread('imageT.png'))));
%Ii=identidad(I);
s=2;
[x,y,v]=find(I);
P=[s.*x,s.*y,v];
P=P';

% [M,N]=size(I);
% s=2;
% x1=s.*x;
% y1=s.*y;
% m1=s.*M;
% n1=s.*N;
% Ii=sparse(x1,y1,v,m1,n1);
% figure,imshow(Ii);

% figure
% ax(1)=subplot(1,2,1);
% imshow(I);
% title('Img Original')
% ax(2)=subplot(1,2,2);
% imshow(Ii);
% title('Img Modificada')
% axis(ax, 'image')
