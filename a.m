clear;
x=1:12;
y=[54.4 54.6 67.1 78.3 85.3 88.7 96.9 97.6 84.1 80.1 68.8 61.1];
p=spline(x,y);
xx=linspace(0,10,200);
yy=ppval(p,xx);
plot(x,y,'o',xx,yy)
hold on; grid on;
