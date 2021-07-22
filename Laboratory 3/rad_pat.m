%{
    * This function calculates radiation pattern for a given physical dimension
    of large loop antenna.
    * Input parameters are  current magnitude,
                            operation frequency,
                            radius of an antenna.
    * Output parameters are frequency dependent radius, 
                            E-field,
                            H-field.     
%}

function [r,a,E,H]=rad_pat(I0, freq, ac)
c=3e8;   %speed of light
lambda=c/freq; %wavelength
eta=377; %intrinsic impedance
k=2*pi/lambda; %propagation constant
a=ac*lambda;   %ac is the radius constant 
r=2*(2*pi*ac)^2/lambda;      %far-field distance determination
theta=linspace(0,2*pi-0.01,5000);  %elevation angle

J=besselj(1,k*a*sin(theta)); %bessel function of first kind  
E=((k*a*eta)/2).*(exp(-1j*k*r)/(r))*I0*J;
H=(-E./eta);
end