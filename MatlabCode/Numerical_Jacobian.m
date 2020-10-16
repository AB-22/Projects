function J=Numerical_Jacobian(q,dq)% dq1,dq2,dq3 are vectors 3x1  with one non-zero component

X=FK(q)*[0 0 0 1]';
q(1)=q(1)+dq(1);
Xd=FK(q+dq)*[0 0 0 1]';
J(1,:)=(Xd(1:3,:)-X(1:3,:))/dq(1);
q(1)=q(1)-dq(1);
q(2)=q(2)+dq(2);
Xd=FK(q)*[0 0 0 1]';
J(2,:)=(Xd(1:3,:)-X(1:3,:))/dq(2);
q(2)=q(2)-dq(2);
q(3)=q(3)+dq(3);
Xd=FK(q)*[0 0 0 1]';
J(3,:)=(Xd(1:3,:)-X(1:3,:))/dq(3);
q(3)=q(3)-dq(3);
end