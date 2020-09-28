x=[0 0 185]';
H=[0 0 1]';
G=[1 0 0]';
F=[0 1 0]';
q=Inverse_Kinematics(x,F,G,H);
q_degrees=180*q/pi;
x_test=Forward_Kinematics(q);

