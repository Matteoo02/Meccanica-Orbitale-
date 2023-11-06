%Prova finale
%% MINELLI CIAO
%Dati:

r = [-7663.5213,-6485.4986,-2201.1930];
v = [3.5150,-2.9160,-3.8140];
mu = 398600;
 [a,e,in,OM,w,theta] = car2kep(r,v,mu);
theta_tot = [0:pi/180:2*pi];

 [Xp,Yp,Zp,X,Y,Z] = plotOrbit(a,e,deg2rad(in),deg2rad(OM),deg2rad(w),theta_tot);
Terra3d;
plot3(X,Y,Z);
hold on
% Define an indefinite plot
% h = plot3(nan,nan,nan,'or');
% Define the moving point
% step_animation = 1;
% for i = 1:step_animation:length(X)
% set(h,'XData',X(i),'YData',Y(i),'ZData',Z(i));
% drawnow
% end
%dati orbita finale:

a2 = 13200;
e2 = 0.3860;
i2 = 1.4840;
OM2 = 2.7570;
w2 = 0.9111;
theta2 = (0.2903);

[Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,i2,OM2,w2,theta_tot);
Terra3d;
plot3(X2,Y2,Z2);



%Passaggio 1: Cambio forma %figure 1
%Passaggio 2: cambio w %figure 2
%Passaggio 3: cambio piano %figure 3


%% Disegno cambio forma con w uguale


r = [-7663.5213,-6485.4986,-2201.1930];
v = [3.5150,-2.9160,-3.8140];
mu = 398600;
 [a,e,in,OM,w,theta] = car2kep(r,v,mu);
theta_tot = [0:pi/180:2*pi];

 [Xp,Yp,Zp,X,Y,Z] = plotOrbit(a,e,deg2rad(in),deg2rad(OM),deg2rad(w),theta_tot);
Terra3d;
plot3(X,Y,Z);
hold on

a2 = 13200;
e2 = 0.3860;


[Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,deg2rad(in),deg2rad(OM),deg2rad(w),theta_tot);
Terra3d;
plot3(X2,Y2,Z2);

% Disegno cambio forma con w diverso

% figure;
% a = 13200;
% e = 0.3860;
% 
% [Xp,Yp,Zp,X,Y,Z] = plotOrbit(a,e,deg2rad(in),deg2rad(OM),deg2rad(w),theta_tot);
% Terra3d;
% plot3(X,Y,Z);
% hold on
% 
% w4 = 0.9111;
% 
% 
% [Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,deg2rad(in),deg2rad(OM),w4,theta_tot);
% Terra3d;
% plot3(X2,Y2,Z2);

% cambio piano

figure;

[Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,deg2rad(in),deg2rad(OM),deg2rad(w),theta_tot);
Terra3d;
plot3(X2,Y2,Z2);


i6 = 1.4840;
OM6 = 2.7570;
% w2 da calcoli su quaderno
[Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,i6,OM,deg2rad(w),theta_tot);
Terra3d;
plot3(X2,Y2,Z2);
hold on
[Xp2,Yp2,Zp2,X2,Y2,Z2] = plotOrbit(a2,e2,i6,OM6,deg2rad(50),theta_tot);
plot3(X2,Y2,Z2);





%%
clear all
a = 7500;
e = 0.03;
i = pi/4;
OM=0;
w=0;
theta = pi;
mu = 398600;
[r,v] = kep2car(a,e,i,OM,w,theta,mu)






