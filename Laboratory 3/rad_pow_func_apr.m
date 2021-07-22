function [a,rad_pow_apr]=rad_pow_func_apr(I0,freq,n,m)
rad_pow_apr=[]; %empty set
c=3e8;
lambda=c/freq;
omg=2*pi*freq;
mu=pi*4e-7;
k=2*pi/lambda;
ac=linspace(0.01,n,m);
a=ac*lambda;
eta=377;
for i=1:length(ac)
power_integrand=@(theta) (k*a(i)*sin(theta)/2).^2.*sin(theta);
int=integral(power_integrand,0,pi);
rad_pow_apr(i)=pi*((a(i)*omg*mu)^2/(4*eta))*(abs(I0))^2;
end
end

% I0=1; 
% n=0.3;
% m=200;
% [a,rad_pow_apr]=rad_pow_func_apr(I0,freq,n,m);
% Rrad=2*rad_pow_apr/abs(I0)^2;