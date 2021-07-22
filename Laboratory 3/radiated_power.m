rad_pow=[];
I0=10;
freq=3e8;
% c=3e8;
% lambda=c/freq;
% k=2*pi/lambda;
% ac=linspace(0,20,800);
% a=ac*lambda;
% eta=377;
% %electrically large antenna radiation resistance
% for i=1:length(ac)
% power_integrand=@(theta) (besselj(1,k*a(i)*sin(theta))).^2.*sin(theta);
% int=integral(power_integrand,0,pi);
% rad_pow(i)=((k*a(i))^2*eta/8)*(abs(I0))^2*2*pi*int;
% end
I0=1; freq=3e8; n=3; m=1000;
[ac,rad_pow]=rad_pow_func(I0,freq,n,m);
plot(ac,2*rad_pow./abs(I0).^2)
ax=gca;
ax.Title.String='Electrically Large Circular Loop Antenna Radiation Resistance';

%electrically small antenna radiation resistance
% ac2=linspace(1/100,1/30,300);
% a2=ac2*lambda;
% Rrad=20*pi^2*(2*pi.*a2./lambda).^4;
% semilogy(a2,Rrad)
% ax=gca; 
% ax.Title.String='Electrically Small Circular Loop Antenna Radiation Resistance';