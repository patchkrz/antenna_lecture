f=3e8;  %operation frequency 
h=linspace(0.01,5,200);
[rad_res,D]=radiation_parameters_function(h,f);
plot(h,rad_res/max(rad_res),h,D/max(D));
ax=gca;
ax.Title.String='Horizontal Electric Dipole Over Pec Ground Radiation Characteristics';
ax.XLabel.String='Distance from pec ground(\lambda)';
ax.YLabel.String='Normalized value';
legend('Radiation Resistance','Directivity')