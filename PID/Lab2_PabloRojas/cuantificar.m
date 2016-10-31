function [Ic]=cuantificar(I,N)
% I = Imagen original
% N = Nieveles.

Ic = round(I*N)./(N-1);
end