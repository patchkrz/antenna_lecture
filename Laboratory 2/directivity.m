freq=3e8;
lc=0.5;
I0=1;
eta=120*pi;%intrinsic impedance   
c=3e8;  %speed of ligth
lambda=c/freq;  %wavelength @ operating freq
k=2*pi/lambda;  %phase constant
l=lambda*lc;    %antenna length

B0=eta*(abs(I0))^2/(8*pi^2);

pattern_func_integrand=@(theta) (cos((k*l/2)*cos(theta))-cos(k*l/2)).^2./sin(theta);

pattern_integral=integral(pattern_func_integrand,0,pi);

dipole_direc=B0/pattern_integral;