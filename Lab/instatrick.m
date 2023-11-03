%% Orangita Pumpkin
L=@linspace;
M=@(f)(0-(1-mod(L(0,8*f,200),2)).^2);
[ Xs, Ys, Zs ] = sphere(199);
R=1+M(2)*.1 + M(4)*.05;
Xp = R.*Xs; Yp = R.*Ys;
Zp = ((0-L(1,-1,200)'.^4)*.4+.8).*Zs.*R;
Cp = hypot(hypot(Xp,Yp),Zs.*R);
surf(Xp,Yp,Zp,Cp,'FaceColor','interp','EdgeColor','none');
%% Stem
s = [ 1.5 1 repelem(.7, 6) ] .* [ repmat([.15 .08],1,8) .1 ]';
[theta, phi] = meshgrid(L(0,pi/2,8),L(0,2*pi,17));
Xs = -(.3-cos(phi).*s).*cos(theta)+.3;
Zs = (.5-cos(phi).*s).*sin(theta)+.5;
Ys = -sin(phi).*s;
surface(Xs,Ys,Zs,[],'FaceColor', '#006400', 'EdgeColor','none', 'Clipping','off');
%% Style
colormap([ L(.81, .95, 256); L(.41, .56, 256); L(0, .09, 256) ]');
axis equal
box on
material([.6 1 .3])
lighting g
camlight