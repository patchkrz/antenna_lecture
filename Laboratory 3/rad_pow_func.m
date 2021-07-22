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

function [a,rad_pow]=rad_pow_func(I0,freq,n,m)
rad_pow=[]; %empty set
c=3e8;
lambda=c/freq;
k=2*pi/lambda;
ac=linspace(0.0001,n,m);
a=ac*lambda;
eta=377;
for i=1:length(ac)
power_integrand=@(theta) (besselj(1,k*a(i)*sin(theta))).^2.*sin(theta);
int=integral(power_integrand,0,pi);
rad_pow(i)=((k*a(i))^2*eta/8)*(abs(I0))^2*2*pi*int;
end
end