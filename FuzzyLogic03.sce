//step = 0.5;
ZX = zeros(4,101);
ZY = zeros(4,101);

for i = 1: 101
    x = (i-1)/2;
    ZX(1,i) = x;
//////////////////////////////////////////////////    
    if x < 20
        ZX(2,i) = 1;
    elseif x >= 20 & x <= 30
        ZX(2,i) = (30- x)/(30-20);
    else
        ZX(2,i) = 0;        
    end    
///////////////////////////////////////////////
     if x >= 20 & x <= 30
        ZX(3,i) = (x-20)/(30-20);
    elseif x >= 30 & x <= 40
        ZX(3,i) = (40-x)/(40-30);
    else
        ZX(3,i) = 0;
    end
//////////////////////////////////////////////////    
    if x >= 30 & x <= 40        
        ZX(4,i) = (x-30)/(40-30);
    elseif x > 40
        ZX(4,i) = 1;
    else
        ZX(4,i) = 0;        
    end      
/////////////////////////////////////////////////    
end
    // Rysowanie wykresu
subplot(2,2,1);
plot(ZX(1,:),ZX(2,:),'r');
plot(ZX(1,:),ZX(3,:),'b');
plot(ZX(1,:),ZX(4,:),'g');
mtlb_axis([0 50 0 1.2]);

x = input("Podaj x: ");
x = x*2 + 1;
disp("uA(x) = " + string(ZX(2,x)));
disp("uB(x) = " + string(ZX(3,x)));
disp("uB(x) = " + string(ZX(4,x)));
