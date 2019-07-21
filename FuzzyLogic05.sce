clc; clear;

termy = zeros(6,101);

for i = 1: 101
    x = -1 + i;
    termy(1,i) = x;
/////////////////////////////////////////////// wykres1 trojkat
      if x == 0
        termy(2,i) = 1;
    elseif x > 0 & x <= 50
        termy(2,i) = (50-x)/(50-0);
    else
        termy(2,i) = 0;
     end
///////////////////////////////////////////// wykres1 trojkat
    if x >= 20 & x <= 60
        termy(3,i) = (x-20)/(60-20);
    elseif x >= 60 & x <= 80
        termy(3,i) = (80-x)/(80-60);
    else
        termy(3,i) = 0;
     end
///////////////////////////////////////////wykres1 trapez
     if x >= 60 & x <= 100
        termy(4,i) = (x-60)/(100-60);
    elseif x == 100
        termy(4,i) = 1;
    else
        termy(4,i) = 0;
     end
/////////////////////////////////////////// dla termu pierwszego zero
    
     if termy(2,i) > 0
         termy(2,i) = 0
     end
//////////////////////////////////////////// dla termu drugiego do wartosci 0.7
     
     if termy (3,i) >= 0.7
         termy(3,i) = 0.7
     end
///////////////////////////////////////// dla termu trzeciego do wartosci 0.3
     if termy(4,i) >= 0.3
         termy(4,i) = 0.3
     end
//////////////////////////////////////////////

    termy (5,i) = max(termy(3,i),termy(4,i));
    
/////////////////////////////////////////////
 

   
    end  
    for i = 1:101
         termy(6,i) = termy(5,i)*termy(1,i);
    end
    suma = sum(termy(6,:));
    suma2 = sum(termy(5,:));
    suma3 = suma/suma2;
    disp(suma3);
    
 

plot(termy(1,:),termy(5,:),'r');
mtlb_axis([0 100 0 1.2]);
mtlb_hold on;



