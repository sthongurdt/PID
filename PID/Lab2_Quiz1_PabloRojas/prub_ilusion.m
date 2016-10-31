clc;
clear all;
close all;

%--------------------------------------------------------------------------
%Punto 1
% A=ilusion(0.2,0.4,0.6,0.5);
% figure,imshow(A)
% A1=A(:,:,3);
% cmap1=zeros(150,3);
% cmap1(:,1)=(0:149)';
% cmap=im2double(cmap1);
% figure,imshow(A1);
% colormap(cmap./149);

%--------------------------------------------------------------------------
%Punto 2
%I=ilusion2(escala cuadro A,
% escala cuadro B,tamaño cuadro);
I=ilusion2(0.2,0.9,32);
figure,imshow(I)