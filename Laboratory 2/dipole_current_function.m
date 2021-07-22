function [z,I]=dipole_current_function(freq,lc,n,I0)
%Operating frequency of antenna-freq
%Antenna length constant-lc
%Number of part antenna consists of-n
%Current peak value-I0
c=3e8;
lambda=c/freq;
l=lc*lambda;
k=2*pi/lambda; 

I=zeros(1,n); %vector declaration
z=linspace(-l/2,l/2,n); %antenna length divided into smaller parts
    for i=1:length(z)
        if i<101  
            %below the z=0 point
            I(i)=I0*sin(k*(l/2+z(i)));
        else
            %above the z=0 point
            I(i)=I0*sin(k*(l/2-z(i)));
        end
    end
end