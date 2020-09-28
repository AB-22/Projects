function q=Inverse_Kinematics(x,F,G,H)


%-------------------------------
%teta1=atan2(y,x)
q(1)=atan2(x(2),x(1));
%teta2
q(2)=atan2(cos(q(1))*x(1)+sin(q(1))*x(2),x(3));
%teta3
q(3)=atan2(H(3),H(1));
%teta4
q(4)=atan2(cos(q(3))*H(1)+sin(q(3))*H(3),-H(2));
%teta5
q(5)=atan2(-G(2),F(2));