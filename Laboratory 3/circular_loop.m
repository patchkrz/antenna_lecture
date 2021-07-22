I0=1; freq=3e8;
[a1,E1,H1]=rad_pat(1, 3e8, 0.2); %function call for a=0.2\lambda
polarplot(abs(E1))
hold on 
[a2,E2,H2]=rad_pat(1, 3e8, 0.5); %function call for a=0.5\lambda
polarplot(20*log(abs(E2(2:)))
hold on
[a3,E3,H3]=rad_pat(1, 3e8, 0.61);%function call for a=0.61\lambda
polarplot(abs(E3))
hold on
[a4,E4,H4]=rad_pat(1, 3e8, 0.9); %function call for a=0.9\lambda
polarplot(abs(E4))
hold on
[a5,E5,H5]=rad_pat(1, 3e8, 5); %function call for a=5\lambda
polarplot(abs(E4))
hold on
ax=gca; ax.ThetaZeroLocation='top'; ax.Title.String='Circular Loop Antenna Radiation Pattern';
legend('a=0.2\lambda','a=0.5\lambda','a=0.61\lambda','a=0.9\lambda','a=5\lambda');