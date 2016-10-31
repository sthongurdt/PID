function [Ii]=identidad(I)

[x,y]=size(I);
w=x;
z=y;
Ii(1:w,1:z)=I(1:x,1:y);

end