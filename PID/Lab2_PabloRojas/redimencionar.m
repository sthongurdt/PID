function [Ir]=redimencionar(I,v)
% I=imagen de entrada
% v=valor de redimencion

[M,N]=size(I);
count=0;
for i=1:M.*N      
    if mod(i,v)==0
        count=count+1;
        Ir(count)=I(i);
    end
end
Ir=vec2mat(Ir,N);
Ir=Ir';
Ir=Ir(1:fix(N/v),:);
end