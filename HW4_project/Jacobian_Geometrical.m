function J=Jacobian_Geometrical(q,L1,L2,L3)

q1=q(1); q2=q(2);q3=q(3);

J=[-sind(q1)*(L2*cosd(q2)+L3*cosd(q2+q3)),-cosd(q1)*(L2*sind(q2)+L3*sind(q2+q3)),-cosd(q1)*L3*sind(q2+q3);
    cos(q1)*(L2*cosd(q2)+L3*cosd(q2+q3)) ,-sind(q1)*(L2*sind(q2)+L3*sind(q2+q3)),-sind(q1)*L3*sind(q2+q3);
                                       0 ,             L2*cosd(q2)+L3*cosd(q2+q3),          L3*cosd(q2+q3);
                                       1 ,                               sind(q1),                sind(q1);
                                       1 ,                              -cosd(q1),               -cosd(q1);
                                       0 ,                                      0,                       0];

end

