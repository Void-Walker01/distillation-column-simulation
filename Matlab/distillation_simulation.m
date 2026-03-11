clear
clc
close all

% Relative volatility for ethanol-water mixture
alpha = 2.5;

x = linspace(0,1,100);

% Equilibrium relation
y = (alpha .* x) ./ (1 + (alpha - 1).*x);

figure
plot(x,y,'b','LineWidth',2)
hold on

plot(x,x,'Color',[0 0.6 0.6],'LineStyle','--','LineWidth',1.8)

xlabel('Liquid mole fraction (x)')
ylabel('Vapor mole fraction (y)')
title('VLE Equilibrium Curve for Ethanol-Water System')

legend('Equilibrium curve','y = x')
grid on


% Distillation specifications
xD = 0.95;   
xB = 0.05;   
R  = 2.5;    

% Rectifying operating line
y_rect = (R/(R+1))*x + xD/(R+1);

plot(x,y_rect,'r','LineWidth',2)

legend('Equilibrium curve','y = x','Rectifying operating line')


xF=0.4;    
q=1;      

if q==1
    x_q=[xF xF];
    y_q=[0 1];
    plot(x_q,y_q,'g','LineWidth',2)
else
    y_q = (q/(q-1))*x-xF/(q-1);
    plot(x,y_q,'g','LineWidth',2)
end

legend('Equilibrium curve','y = x','Rectifying line','Feed line (q-line)')


m = R/(R+1);
c = xD/(R+1);

if q==1
    x_int = xF;
    y_int = m*x_int + c;
else
    m_q = q/(q-1);
    c_q = -xF/(q-1);
    
    x_int = (c_q - c)/(m - m_q);
    y_int = m*x_int + c;
end

y_strip = ((y_int - xB)/(x_int - xB))*(x - xB) + xB;

plot(x,y_strip,'m','LineWidth',2)

legend('Equilibrium curve','y = x','Rectifying line','Feed line','Stripping line')