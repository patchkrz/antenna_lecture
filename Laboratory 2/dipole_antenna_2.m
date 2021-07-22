%0.02 wavelength small dipole antenna
[theta,U]=radiation_intensity_function(2.5e9,0.02,400,1) 
polarplot(U)
hold on
%0.5 wavelength half wave dipole antenna
[theta,U]=radiation_intensity_function(2.5e9,0.5,400,1)
polarplot(U)
hold on
%1 wavelength dipole antenna
[theta,U]=radiation_intensity_function(2.5e9,1,400,1)
polarplot(U)
hold on
%1.5 wavelength dipole antenna
[theta,U]=radiation_intensity_function(2.5e9,1.5,400,1)
polarplot(U)
hold on
%graphical tools
ax=gca
ax.ThetaZeroLocation = 'top';  ax.RMinorGrid = 'on'; ax.ThetaMinorGrid = 'on';
ax.Title.String = 'Dipole Antenna Radiation Intensity for 2500MHz';
legend({'0.02\lambda','0.5\lambda','1\lambda','1.5\lambda'},'FontSize',12);