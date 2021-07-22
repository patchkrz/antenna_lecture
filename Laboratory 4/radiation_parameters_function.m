%
% This function calculates radiation resistance and directivity of horizontal
% electrical dipol with perfect pec ground.
% 
% Input parameters of the function are
%     h->the distance between antenna and pec ground in terms of wavelengths
%     f->operation frequency.
% 
% Output parameters of the function are
%     radiation resistance
%     directivity.
%

function [rad_res, D]=radiation_parameters_function(h,f)
c=3e8;  %speed of EM wave in space
lambda=c/f; %wavelength in operation frequency 
I0=1;   %current amplitude
eta=120*pi; %intrinsic impedance of free space
l=0.01; %antenna length
k=2*pi/lambda; %wave number
h1=lambda.*h; %antenna and pec ground distance

%radiated power calculation
constant=eta*(pi/2)*(abs(I0*l/lambda))^2;
var1=((2/3)-(sin(2*k.*h)./(2*k.*h)));
var2=-cos(2*k.*h)./(2*k.*h).^2;
var3=sin(2*k.*h)./(2*k.*h).^3;

rad_pow=constant.*(var1+var2+var3);
%radiation resistance calculation
rad_res=(2/I0^2).*rad_pow;
%directivity calculation
D=[];
for i=1:length(h)
if(k*h(i)<=pi/2 && h(i)<=lambda/4)
    D(i)=4*(sin(k.*h(i)))^2/rad_res(i);
end
if(k*h(i)>pi/2 && h(i)>lambda/4)
    D(i)=4/rad_res(i);
end
end

end