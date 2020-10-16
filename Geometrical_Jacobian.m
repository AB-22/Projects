function J=Geometrical_Jacobian(q)
a2=5;
d1=3;
J(:,1)=[-(q(3)+a2)*cosd(q(2))*sind(q(1));(q(3)+a2)*cosd(q(1))*cosd(q(2));...
             0;0;0;1];
         
J(:,2)=[-(q(3)+a2)*cosd(q(1))*sind(q(2));-(q(3)+a2)*sind(q(1))*sind(q(2));...
         (q(3)+a2)*cosd(q(2));sind(q(1));-cosd(q(1));0];

J(:,3)=[cosd(q(1))*cosd(q(2));sind(q(1))*cosd(q(2));sind(q(2));0;0;0];
         
         
end