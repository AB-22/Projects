function x=FK(q)
a2=5;
d1=3;
T0_n=[-cosd(q(1))*sind(q(1)) sind(q(1)) cosd(q(1))*cosd(q(2)) (q(3)+a2)*cosd(q(1))*cosd(q(2));...
      -sind(q(1))*sind(q(2)) -cosd(q(1)) sind(q(1))*cosd(q(2)) (q(3)+a2)*sind(q(1))*cosd(q(2));...
      cosd(q(2))                0         sind(q(2))            d1+(q(3)+a2)*sind(q(2));...
      0                         0             0                         1                  ];
  x=T0_n;
    

end