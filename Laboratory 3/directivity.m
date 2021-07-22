%{
   * This code calculates directivity of the loop antenna.
   * "rad_pat(current,frequency,loop diameter)" function returns radiated
   electric and magnetic field, frequency dependent radius and far field distance
   for antenna different radius values.    
%} 
I0=1;  %current magnitude
eta=377;   %intrinsic 
freq=3e8;  %operating frequency
n=3;    %upper limit for the radius of the loop
m=200;  %number of iteration to control precision of calculations
ac=linspace(0.0001,n,m);  %physical length vector of the loop radius

for i=1:length(ac)
[r(i),a(i),E(:,i),H(:,i)]=rad_pat(I0,freq,ac(i));
end

W=(1/(2*eta))*abs(E).^2; %power density

[a,rad_pow]=rad_pow_func(I0,freq,n,m); %radiated power calculation

D=4*pi*r.^2.*(W./rad_pow); %directivity calculation

plot(2*pi*a, max(D))
ax=gca;
ax.Title.String='Circular Loop Antenna Directivity-Loop Circumference Relation';
xlabel('Loop Circumference(\lambda)')
ylabel('Directivity')
