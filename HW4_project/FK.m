function [x,T0E]=FK(q,L1,L2,L3)
T01=[cosd(q(1)) -sind(q(1)) 0 0;sind(q(1)) cosd(q(1)) 0 0;0 0 1 L1;0 0 0 1];
T12=[cosd(q(2)) -sind(q(2)) 0 0;0 0 -1 0;sind(q(2)) cosd(q(2)) 0 0;0 0 0 1];
T23=[cosd(q(3)) -sind(q(3)) 0 L2;sind(q(3)) cosd(q(3)) 0 0;0 0 1 0;0 0 0 1];
T3E=[1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];

T0E=T01*T12*T23*T3E;

x=T0E*[0 0 0 1]';
end

