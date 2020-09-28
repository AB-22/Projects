function x=Forward_Kinematics(q) 

K=185;% Length constant
%-------------------------
%x
x(1)=K*cos(q(1))*sin(q(2));
%y
x(2)=K*sin(q(1))*sin(q(2));
%z
x(3)=K*cos(q(2));