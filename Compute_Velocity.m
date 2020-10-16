function v=Compute_Velocity(t,q)

q_dot=[cos(t); -2*sin(2*t);3*cos(3*t)];
for i=1:length(t)
    J=Geometrical_Jacobian(q(:,i));
    v(:,i)=J*q_dot(:,i);
end
end