function [I]=figura2(stringfigura)

switch stringfigura
    case 'cuadrado'
        x1=[32 234 234 32];
        y1=[32 32 234 234];
        x2=[35 231 231 35];
        y2=[35 35 231 231];
        I1=poly2mask(x1,y1,256,256);
        I2=poly2mask(x2,y2,256,256);
        I=I1-I2;
    case 'rectangulo'
        x1=[32 234 234 32];
        y1=[64 64 202 202];
        x2=[35 231 231 35];
        y2=[67 67 199 199];
        I1=poly2mask(x1,y1,256,256);
        I2=poly2mask(x2,y2,256,256);
        I=I1-I2;
    case 'triangulo'
        x1=[127 234 32];
        y1=[32 234 234];
        x2=[127 231 35];
        y2=[35 231 231];
        I1=poly2mask(x1,y1,256,256);
        I2=poly2mask(x2,y2,256,256);
        I=I1-I2;
    case 'circulo'
        r1=200;
        r2=120;
        n=256;
        I1=zeros(n);
        I2=zeros(n);
        x1=linspace(-50,50,n);
        y1=linspace(-50,50,n);
        x2=linspace(-50,50,n);
        y2=linspace(-50,50,n);
        [mx1 my1]=meshgrid(x1,y1);
        [mx2 my2]=meshgrid(x2,y2);
        I1(((mx1.^2)+(my1.^2))<r1)=1;
        I2(((mx2.^2)+(my2.^2))<r2)=1;
        I=I1-I2;
    case 'todas'
        x11=[32 234 234 32];
        y11=[32 32 234 234];
        x12=[35 231 231 35];
        y12=[35 35 231 231];
        I11=poly2mask(x11,y11,512,512);
        I12=poly2mask(x12,y12,512,512);
        I1=I11-I12;
        %---------------
        x21=[288 490 490 288];
        y21=[64 64 202 202];
        x22=[291 487 487 291];
        y22=[67 67 199 199];
        I21=poly2mask(x21,y21,512,512);
        I22=poly2mask(x22,y22,512,512);
        I2=I21-I22;
        %---------------
        x31=[127 234 32];
        y31=[288 490 490];
        x32=[127 230 36];
        y32=[295 487 487];
        I31=poly2mask(x31,y31,512,512);
        I32=poly2mask(x32,y32,512,512);
        I3=I31-I32;
        %---------------
        r1=200;
        r2=180;
        n=512;
        I41=zeros(n);
        I42=zeros(n);
        x41=linspace(-150,50,n);
        y41=linspace(-150,50,n);
        x42=linspace(-150,50,n);
        y42=linspace(-150,50,n);
        [mx41 my41]=meshgrid(x41,y41);
        [mx42 my42]=meshgrid(x42,y42);
        I41(((mx41.^2)+(my41.^2))<r1)=1;
        I42(((mx42.^2)+(my42.^2))<r2)=1;
        I4=I41-I42;
        %--------------------
        I=I1+I2+I3+I4;
end


end