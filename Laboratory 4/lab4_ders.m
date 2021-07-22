m=200; %number of iterations for the calculations
theta=linspace(-pi/2,pi/2,m); %the angle in which the pattern is observed.
c=3e8;  %speed of EM wave in space
f=3e8;  %operation frequency 
lambda=c/f; %wavelength in operation frequency 

%distance between pec ground and antenna
%h=[0 lambda/8 lambda/4 3*lambda/8 lambda/2 lambda];
h=[2*lambda 5*lambda]; 

E=[];   %memory allocation
for i=1:length(h)
    E(i,:)=amplitude_pattern(h(i),theta);
end

polarplot(theta,10*log10(abs(E)))
ax=gca;
ax.ThetaZeroLocation='top';
ax.Title.String='Horizontal Electric Dipole Amplitude Patterns Over Pec Ground';
%legend('h=0','h=\lambda/8','h=\lambda/4','h=3\lambda/8','h=\lambda/2','h=\lambda');
legend('h=2\lambda','h=5\lambda')

