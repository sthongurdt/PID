clc;
clear all;
close all;

%%------------------------------------------------------------------------
%%Punto 1.
% I=imread('coins.png');
% whos I
% imwrite(I, 'coins.png');
% imwrite(I, 'coins.jpg');
% imwrite(I, 'coins5.jpg', 'quality', 5);

%%------------------------------------------------------------------------
%%Punto 2.
% [I, map] = imread('sprite.tif');
% whos I
% R=I(:,:,1);
% G=I(:,:,2);
% B=I(:,:,3);
% figure,imshow(R);
% colormap('cool');
% figure,imshow(G);
% colormap('hot');
% figure,imshow(B);
% colormap('lines');
% figure,imshow(G);
% colormap('grey');
% cmap1=zeros(150,3);
% cmap1(:,1)=(0:149)';
% cmap=im2double(cmap1);
% figure,imshow(G);
% colormap(cmap./149);

%%--------------------------------------------------------------------------
%%Punto 3.
% deg=ones(256,256);
% deg1=ones(256,256);
% for i=1:256
%     for j=1:256
%         deg(i,j)=j/256;
%     end
% end
% for j=1:256
%     for i=1:256
%         deg1(i,j)=i/256;
%     end
% end
% figure,imshow(deg);
% figure,imshow(deg1);

%%--------------------------------------------------------------------------
%%Punto 4.
% [A]=figura('todas');
% figure,imshow(A);

%%--------------------------------------------------------------------------
%%Punto 5.
[A]=figura2('todas');
figure,imshow(A);

%%--------------------------------------------------------------------------
%%Punto 6.
