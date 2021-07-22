%{
    * This function calculates radiated power for an array of given physical dimension
    of large loop antenna.
    * Input parameters are  current magnitude,
                            operation frequency,
                            radius of an antenna,
                            number of iteration in calculations. 
    * Output parameters are frequency dependent radius, 
                            radiated power.    
%}

function [a,E,H] = rad_field(I0, freq, n, m)
c=3e8; %speed of light
lambda=c/freq; %wavelength
eta=377; %intrinsic impedance
k=2*pi/lambda; %propagation constant
ac=linspace(0,n,m); %physical radius dimension array 
a=ac.*lambda;   %ac is the radius constant 
r=2*(2*pi*a(1))^2/lambda;  %far-field distance determination
theta=linspace(0,2*pi,200); %elevation angle
%E=[]; %empty E-field array created

for i=1:length(a)
%bessel function of first kind calculated for "length(a)" number of different radius 
J(i)=besselj(1,k*a(i).*sin(theta)); 
%E field calculated for "length(a)" number of different radius
E(i)=((k*a(i).*eta)/2).*(exp(-1j*k*r)/(r))*I0.*J(i); 
end
H=(-E./eta);
end
