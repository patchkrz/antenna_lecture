function [l,Prad]=radiated_power_function(freq,lc,I0)

eta=120*pi;  %intrinsic impedance 
c=3e8;  %speed of ligth
lambda=c/freq;  %wavelength @ operating freq
k=2*pi/lambda;  %phase constant
l=lambda*lc;    %antenna length

%radiated power integrand 
power_integrand=@(theta) (cos((k*l/2)*cos(theta))-cos(k*l/2)).^2./sin(theta);
%radiated power calculation
Prad=(eta*(abs(I0))^2/(4*pi))*integral(power_integrand,0,pi);
end
