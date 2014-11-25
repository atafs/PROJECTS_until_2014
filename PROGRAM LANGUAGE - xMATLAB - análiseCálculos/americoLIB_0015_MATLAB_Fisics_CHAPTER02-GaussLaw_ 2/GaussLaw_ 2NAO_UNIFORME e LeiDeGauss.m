%CHANGE INPUT DATA ************************

%electricField:
r = 1;                  %raio
q = 1.e-6;              %charge
A = 1;                  %area

%electricFlux (uniform)
E1 = 2.e3;              %electricField E
A1 = 0.0314;            %area [m^2];
phi1 = 0;               %angle

E2 = 6.75e5;
A2 = 4*pi*(0.2)^2;      %area [m^2];
phi2 = 0;               %angle

%*****************************************

%variable
syms x;
x = linspace(-15,15);

%constants
k = 8.99e9;

%formula: calculate E and electricFlux
E = k * ((q)/(r^2));
fprintf('The value of E (electricField) is: %i; [N/C ou V/m]\n', E)

electricFlux = E * A * cos(phi1);
fprintf('The value of electricFlux is: %i; [N*m^2/C]\n\n', electricFlux)

% or ------------------------------------------------------------------

%formula: calculate electricFlux
electricFlux1 = E1 * A1 * cos(phi1);
fprintf('The evalue of electricFlux1 with angle %i is: %i; [N*m^2/C]\n', phi1, electricFlux1)

electricFlux2 = E2 * A2 * cos(phi2);
fprintf('The evalue of electricFlux2 with angle %i is: %i; [N*m^2/C]\n', phi2, electricFlux2)

%formula: E and A constant, with phi variable from 0 to 1
E3 = 1;
A3 = 1;
phi3 = linspace(0,(pi/2));

electricFlux3 = E3 * A3 * cos(phi3);

hold on

%graphic
%plot(x,E,'r-')
%plot(x,electricFlux1,'r-')
%plot(x,electricFlux2,'b-')

%formula and graphic
xlabel('phi angle: radian (0 to pi/2)')
ylabel('electricFlux')
title('GAUSS LAW: phi variable, with E and A constant')
plot(phi3,electricFlux3,'b-')
