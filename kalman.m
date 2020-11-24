a = 6.*randn(1,100);    % 生成 a
% vara = var(a);
% plot(a);
% a(1,5);             % 调用a的第5个元素

F=[1 0.1; 0 1];     % Fn
v1=[0.005;0.1]*a;   % v1

x=zeros(2,101);
x(:,1)=[800 -49];   % x, 数据 x(1)对应 公式中的 x(0);   数据 v1(1)对应 公式中的 v1(0)
for i = 1:100
       x(:,i+1) = F*x(:,i)+v1(:,i);
end
subplot(311)
plot(x(1,2:101));   % 画的时候不画出 x(0)v(0)
subplot(312)
plot(x(2,2:101));

w = 10.*randn(1,100);   % 生成 y
C=[1 0];
v2=w;
temp=C*x;
y=temp(:,2:101)+w;
subplot(313)
plot(y);