function [theta, U]=radiation_intensity_function(freq,lc,n,I0)
%Operating frequency of antenna-freq
%Antenna length constant-lc
%Angle resolution-n
%Current peak value-I0
eta=120*pi;
c=3e8;
lambda=c/freq;
k=2*pi/lambda;
l=lambda*lc;
theta=linspace(0,2*pi,n);

U=((eta*abs(I0)^2)/(8*pi^2)).*((cos((k*l/2).*cos(theta))-cos((k*l/2)))./(sin(theta))).^2;

end