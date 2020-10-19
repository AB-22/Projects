function q=IK(x,L1,L2,L3,Elbow1,Elbow3)
C3=(x(1)^2+x(2)^2+(x(3)-L1)^2-L2^2-L3^2)/(2*L2*L3);
if(C3<=1&&C3>=-1)
S3=sqrt(1-C3^2);
if(Elbow1==0&&Elbow3==0)
    q(3)=atan2d(S3,C3);
    q(1)=atan2d(x(2),x(1));
elseif(Elbow1==0&&Elbow3==1)
    q(3)=atan2d(-S3,C3);
    q(1)=atan2d(x(2),x(1));
elseif(Elbow1==1&&Elbow3==0)
    q(3)=atan2d(S3,C3);
    q(1)=atan2d(-x(2),-x(1));
elseif(Elbow1==1&&Elbow3==1)
    q(3)=atan2d(-S3,C3);
    q(1)=atan2d(-x(2),-x(1));
end

Coeff=[L2+L3*cosd(q(3)),-L3*sind(q(3));L3*sind(q(3)),L2+L3*cosd(q(3))];
b=[x(1)*cosd(q(1))+x(2)*sind(q(1));x(3)-L1];
X_q2=inv(Coeff)*b;
q(2)=atan2d(X_q2(2),X_q2(1));

else disp('Error,out of workspace!');
end

end

