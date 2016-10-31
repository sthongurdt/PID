function [I]=figura(stringfigura)

switch stringfigura
    case 'cuadrado'
        x=[32 234 234 32];
        y=[32 32 234 234];
        I=poly2mask(x,y,256,256);
    case 'rectangulo'
        x=[32 234 234 32];
        y=[64 64 202 202];
        I=poly2mask(x,y,256,256);
    case 'triangulo'
        x=[127 234 32];
        y=[32 234 234];
        I=poly2mask(x,y,256,256);
    case 'circulo'
        r=200;
        n=256;
        imagen=zeros(n);
        x=linspace(-50,50,n);
        y=linspace(-50,50,n);
        [mx my]=meshgrid(x,y);
        imagen(((mx.^2)+(my.^2))<r)=1;
        I=imagen;
    case 'todas'
        x1=[32 234 234 32];
        y1=[32 32 234 234];
        I1=poly2mask(x1,y1,512,512);
        x2=[288 490 490 288];
        y2=[64 64 202 202];
        I2=poly2mask(x2,y2,512,512);
        x3=[127 234 32];
        y3=[288 490 490];
        I3=poly2mask(x3,y3,512,512);
        r=200;
        n=512;
        imagen=zeros(n);
        x4=linspace(-150,50,n);
        y4=linspace(-150,50,n);
        [mx4 my4]=meshgrid(x4,y4);
        imagen(((mx4.^2)+(my4.^2))<r)=1;
        I4=imagen;
        I=I1+I2+I3+I4;
end


end