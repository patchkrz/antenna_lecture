c=3e8;
freq=3e8;
lambda=c/freq;
ac=linspace(1/100,1/30,300);
a=ac*lambda;
Rrad=20*pi^2*(2*pi.*a./lambda).^4;
semilogy(a,Rrad)
ax=gca; 
ax.Title.String='Electrically Small Circular Loop Antenna Radiation Resistance';
ax.XLabel.String ='Radius of Loop'; ax.YLabel.String ='Radiation Resistance';
grid on