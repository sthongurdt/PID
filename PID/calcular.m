function [A1,d]=calcular(A)
[h,g]=size(A);
if h==g
    A1=inv(A);
    d=det(A);
else
    disp ('no es invertible');
    fprintf('no es invertible');
end