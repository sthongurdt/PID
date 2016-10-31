function [I]=ilusion(a1,a2,a3,b)

% Si se quiere ver en grises solo se debe quitar el ultimo # dentro de las
% matris ejp: con color A(:,1:256,3)=a1; sin color A(:,1:256)=a1; 
A=zeros(256,768);
A(:,1:256,3)=a1;
A(:,257:512,3)=a2;
A(:,513:768,3)=a3;
A(64:192,64:192,2)=b;
A(64:192,321:449,2)=b;
A(64:192,577:705,2)=b;
I=A;

end