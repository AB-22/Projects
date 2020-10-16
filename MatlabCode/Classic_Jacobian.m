function J=Classic_Jacobian(q)
a2=5;
d1=3;
J=[-(q(3)+a2)*cosd(q(2))*sind(q(1)) -(q(3)+a2)*cosd(q(1))*sind(q(2)) cosd(q(1))*cosd(q(2));...
    (q(3)+a2)*cosd(q(1))*cosd(q(2)) -(q(3)+a2)*sind(q(1))*sind(q(2)) sind(q(1))*cosd(q(2));...
               0                            (q(3)+a2)*cosd(q(2))           sind(q(2))     ];
           
end