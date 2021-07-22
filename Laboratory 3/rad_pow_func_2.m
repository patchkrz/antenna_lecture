function [a_2,rad_pow_2]=rad_pow_func_2(I0,freq,n,m)


c=3e8;
lambda=c/freq;
k=2*pi/lambda;
ac_2=linspace(0,n,m);
a_2=ac_2*lambda;
rad_pow_2=[];
eta=377;
mu=4*pi*e-7;

for i=1:length(a_2)
rad_pow_2(i)=pi*(a(i)*2*pi*freq*mu)^2*I0^2/(4*eta*k*a(i));
% power_integrand=@(theta) (besselj(1,k*a(i)*sin(theta))).^2.*sin(theta);
% int=integral(power_integrand,0,pi);
% rad_pow(i)=((k*a(i))^2*eta/8)*(abs(I0))^2*2*pi*int;
end

end