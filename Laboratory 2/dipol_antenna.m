% str_len_antenna='Distance from the center of antenna (m)';
% str_cur_amp='Current Amplitude (A)';
% 
% [z,I]=dipole_current_function(3e8,0.5,200,1);
% p1=plot(z,I);
% set(p1,'LineWidth',2)
% hold on
% [z,I]=dipole_current_function(3e8,0.6,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(3e8,0.8,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(3e8,1,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(3e8,1.2,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(3e8,1.5,200,1);
% plot(z,I)
% hold on 
% [z,I]=dipole_current_function(3e8,1.7,200,1);
% plot(z,I)
% hold on
% 
% ax=gca; 
% ax.XGrid='on'; ax.YGrid='on'; ax.XMinorGrid='on'; ax.YMinorGrid='on';
% ax.Title.String = 'Dipole Antenna Current Distribution for 300MHz';
% ax.XLabel.String = str_len_antenna; ax.YLabel.String = str_cur_amp;
% legend({'0.5m','0.6m','0.8m','1m','1.2m','1.5m','1.7m'},'FontSize',12);

% [z,I]=dipole_current_function(2.5e9,0.5,200,1);
% p1=plot(z,I);
% set(p1,'LineWidth',2)
% hold on
% [z,I]=dipole_current_function(2.5e9,0.6,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(2.5e9,0.8,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(2.5e9,1,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(2.5e9,1.2,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(2.5e9,1.5,200,1);
% plot(z,I)
% hold on
% [z,I]=dipole_current_function(2.5e9,1.7,200,1);
% plot(z,I)
% 
% ax=gca; 
% ax.XGrid='on'; ax.YGrid='on'; ax.XMinorGrid='on'; ax.YMinorGrid='on';
% ax.Title.String = 'Dipole Antenna Current Distribution for 2500MHz';
% ax.XLabel.String = str_len_antenna; ax.YLabel.String = str_cur_amp;
% legend({'60mm','72mm','96mm','120mm','144mm','180mm','204mm'},'FontSize',12);
% axis([min(z) max(z) min(I) max(I)])

% eta=120*pi;
% I0=1;
% freq=3e8;
% c=3e8;
% lambda=c/freq;
% k=2*pi/lambda;
% l=1;
% lc=lambda*l;
% theta=linspace(0,2*pi,400);
% 
% u=((eta*abs(I0)^2)/(8*pi^2)).*((cos((k*lc/2).*cos(theta))-cos((k*lc/2)))./(sin(theta))).^2;

[theta,U]=radiation_intensity_function(2.5e9,0.02,400,1)
polarplot(U)
hold on
[theta,U]=radiation_intensity_function(2.5e9,0.5,400,1)
polarplot(U)
hold on
[theta,U]=radiation_intensity_function(2.5e9,1,400,1)
polarplot(U)
hold on
[theta,U]=radiation_intensity_function(2.5e9,1.5,400,1)
polarplot(U)
hold on
ax=gca
ax.ThetaZeroLocation = 'top';  ax.RMinorGrid = 'on'; ax.ThetaMinorGrid = 'on';
ax.Title.String = 'Dipole Antenna Radiation Intensity for 2500MHz';
legend({'0.02\lambda','0.5\lambda','1\lambda','1.5\lambda'},'FontSize',12);