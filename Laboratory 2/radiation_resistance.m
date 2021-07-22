%based on the previous radiated power calculations
R_r=2*Prad/abs(I0)^2;
%graphical manipulations
plot(l,R_r)
ax=gca; 
ax.XGrid='on'; ax.YGrid='on'; ax.XMinorGrid='on'; ax.YMinorGrid='on';
ax.XLabel.String = 'Antenna length (\lambda)'; ax.YLabel.String = 'Radiation Resistance(Ohm)';
ax.Title.String = 'Dipole Antenna Radiation Resistance';