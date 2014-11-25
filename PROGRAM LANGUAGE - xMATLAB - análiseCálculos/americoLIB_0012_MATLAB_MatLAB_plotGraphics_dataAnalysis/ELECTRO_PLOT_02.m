x = linspace(-pi, pi);
y = linspace(-pi, pi);

[x,y] = meshgrid(x,y);
z = cos(x.*y);
mesh(x,y,z)

%newWindow
figure

x = linspace(-3,3);
y = linspace(-3,3);
[x,y] = meshgrid(x,y);
z = x.^2;
mesh(x,y,z)

%addWindow
xlabel('x')
ylabel('y')
title('Processo Aleatorio Gausseano')
hold on
p = x + y;
mesh(x,y,p)

plot(x,y,'r--')







