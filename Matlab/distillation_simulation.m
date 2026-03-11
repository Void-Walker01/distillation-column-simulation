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

plot(x,x,'k--','LineWidth',1.5)

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