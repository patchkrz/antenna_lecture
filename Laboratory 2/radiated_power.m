i=0.1:0.005:1;
for k=1:length(i)
    [l(k),Prad(k)]=radiated_power_function(3e8,i(k),1);
end

plot(l,Prad)
ax=gca; 
ax.XGrid='on'; ax.YGrid='on'; ax.XMinorGrid='on'; ax.YMinorGrid='on';
ax.XLabel.String = 'Antenna length (\lambda)'; ax.YLabel.String = 'Radiated Power(W)';


