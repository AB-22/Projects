%%% Test FK and IK
clc
close all;
clear all;

q=[90;0;10];
x=FK(q);
disp(x);

q_test=IK(x(:,4),1);
disp(q_test);
%%
% Calculate Jacobian matrix with three methods
clc
close all;
clear all;
x=[10 10 12]';
q=IK(x,0);
J_c=Classic_Jacobian(q);

J_G=Geometrical_Jacobian(q);

dq=[1e-8 1e-8 1e-8]';
J_N=(Numerical_Jacobian(q,dq))';


%%
% Calculate  velocity of the tool frame
t=0:0.1:2-0.1;
q=[sin(t);cos(2*t);sin(3*t)];
V=Compute_Velocity(t,q);
V_abs=sqrt(V(1,:).^2+V(2,:).^2+V(3,:).^2);
%%% Display Linear Velocity
figure();
plot(t,V(1,:),'r')
hold on;
plot(t,V(2,:),'b')
hold on;
plot(t,V(3,:),'g')
hold on;
plot(t,V_abs,'y');

%%%Display angular velocity
omega_abs=sqrt(V(4,:).^2+V(5,:).^2+V(6,:).^2);
figure();
plot(t,V(4,:),'r')
hold on;
plot(t,V(5,:),'b')
hold on;
plot(t,V(6,:),'g')
hold on;
plot(t,omega_abs,'y');