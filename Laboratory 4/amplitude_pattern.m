%
%     This function calculates amplitude pattern of the horizontal electrical
%     dipole. 
%      The input variables of the function are 
%      
%      h->the distance between antenna and pec ground in terms of wavelengths
%      theta->the angle which the pattern is calculated.
%
%     The output of the function is 
%      
%      E->radiated E-field.
%

function [E]=amplitude_pattern(h,theta)
c=3e8;
f=3e8;
lambda=c/f;
I_0=1;
eta=120*pi;
k=2*pi/lambda;
l=0.01;
r=2*l^2/lambda;
phi=pi/2;
E=1j*eta*(k*I_0*l*exp(-1j*k*r)/(4*pi*r)).*sqrt(1-(sin(theta)).^2).*(2*1j*sin(k.*h.*cos(theta)));
end