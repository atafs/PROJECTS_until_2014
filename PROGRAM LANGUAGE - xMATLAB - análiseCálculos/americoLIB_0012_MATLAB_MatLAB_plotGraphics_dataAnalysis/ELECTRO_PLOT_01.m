%PLOT
x = [-2 -1 0 1 2]
x
y = 3*x - 2
y

plot(x,y)

y = x.^2
plot(x,y)
x = linspace(-2,2);

y = x.^2;
plot(x,y)

x = linspace(-2,2);
y = x.^2;
y2 = sin(x)
plot(x,y)

%plot in same graphic more than one
hold on

plot(x,y2)

%hold off

y3 = x.^3;
plot(x,y3)

%plot one graphic per window
figure

y4 = x.^4;
plot(x,y4)

