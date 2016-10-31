clc; clear all; close all;

%--------------------------------------------------------------------------
% Punto 2.

% I=rgb2gray(im2double(imread('sprite.tif')));
% %figure,imshow(I);
% B=8; %Cantidad de bits
% N=2.*B;
% [Ic] = cuantificar(I,N);
% %figure,imshow(Ic);
% Iruido=Ic-I;
% Mayor=max(max(Iruido))

%--------------------------------------------------------------------------
% Punto 3.

% I=rgb2gray(im2double(imread('cubone&ghost.jpg')));
% % Ir=imresize(I,0.1);
% v=10;
% Ir=redimencionar(I,v);
% figure,imshow(I);
% figure,imshow(Ir);

%--------------------------------------------------------------------------
% Punto 3.b.
I=rgb2gray(im2double(imread('drink.jpg')));
%size(I)
figure,imshow(I);
eyes=I(160:259,880:1079);
%size(eyes)
figure,imshow(eyes);
for i=1:10
    eyes=imresize(eyes,0.1);
    %size(eyes)
    %figure,imshow(eyes);
    eyes=imresize(eyes,10);
    %size(eyes)
    %figure,imshow(eyes);
end
I(160:259,880:1079)=eyes;
figure,imshow(I);