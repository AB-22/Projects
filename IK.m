function q=IK(x,elbow)
a2=5;
d1=3;
q(3)=sqrt(x(1)^2 +x(2)^2 +(x(3)-d1)^2)-a2;

 if elbow==0
     q(1)=atan2d(x(2),x(1));
     q(2)=atan2d((x(3)-d1)/(q(3)+a2),sqrt(x(1)^2+x(2)^2)/(q(3)+a2));
 elseif elbow==1
     q(1)=180+atan2d(x(2),x(1));
     q(2)=atan2d((x(3)-d1)/(q(3)+a2),-1*sqrt(x(1)^2+x(2)^2)/(q(3)+a2));

end