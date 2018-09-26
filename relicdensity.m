clear all;
clf

m_chi = 100; % GeV
sigma = 3e-36; % cm^3 s^-1
sigma = sigma*(1.98e-14).^(-3).*(6.58e-25); % GeV^-2


x1 = logspace(-1,3,100);
% x = m_chi/T
% T = m_chi/x;

G = 6.708e-39; % GeV^-2

g_chi = 1;
g = 100;
s = @(x) (2*pi^2/45).*g.*(m_chi./x).^3; % GeV^3
rho = @(x) (pi^2/30).*g.*(m_chi./x).^4; % GeV^4
H = @(x) sqrt(8*pi*G*rho(x)./3); % GeV

Y_eq = @(x) (45/(2*pi^4)).*sqrt(pi/8).*(g_chi/g).*x.^(3/2).*exp(-x); % dimensionless
RHS = @(x,Y) (s(x).*sigma./(H(x).*x)).*(Y_eq(x).^2-Y.^2); % dimensionless

logx_span = [1,3];
options = odeset('RelTol',1e-20,'AbsTol',[1e-18]);
[x,Y]= ode45(@(logx,Y) RHS(10.^logx,Y),logx_span,Y_eq(10.^logx_span(1)),options);

x = 10.^x;
x1 = logspace(-1,3,100);

plot(x1,m_chi.*(Y_eq(x1)./Y_eq(1)),'k-','linewidth',3);hold on
plot(x,m_chi.*Y./Y_eq(1),'r-','linewidth',3)
ylim([1e-20,1e5])
xlim([1,1000])
set(gca,'yscale','log','xscale','log')

%%

clear all;
m_chi = 100; % GeV
sigma = 3e-36; % cm^3 s^-1

g_chi = 1;
g = 1;

Y_eq = @(x) 0.145.*(g_chi./g).*x.^(3/2).*exp(-x);
lambda = 2.76e35.*m_chi.*sigma;

%W_eq = @(x) log(Y_eq(x));
%RHS = @(x,W) (lambda./x.^2).*(g./sqrt(g)).*(exp(2.*W_eq(x) - W)-exp(W));
%RHS = @(x,W) -exp(2*W).*lambda./x.^2;
%x_span = [20,1000];
%options = odeset('RelTol',1e-13,'AbsTol',[1e-18]);
%[x,W] = ode45(RHS,x_span,W_eq(x_span(1)),options);
%Y = (exp(W));

Y = @(x) Y_eq(x) + x.^2./(2*lambda);

a = 0.145*(g_chi/g);
x_f = log(lambda*a)-(0+0.5)*log(log(lambda*a));
Y_f = x_f./lambda;

x1 = logspace(-1,3,100);
plot(x1,Y(x1),'r-')
set(gca,'yscale','log','xscale','log');

hold on

plot([x1(1),x1(end)],[Y_f,Y_f],'k-')


plot(x1,Y_eq(x1),'k-','linewidth',3);hold on 
ylim([1e-20,1])
xlim([1,1000])
set(gca,'yscale','log','xscale','log')

%%
clf
clear all;
x1 = logspace(-1,3,1000);

m_chi = 100; % GeV
sigma = 3e-36; % cm^3 s^-1
sigma = sigma*(1.98e-14).^(-3).*(6.58e-25); % GeV^-2

m_pl =  2.435e18;

g = 200;
g_star_S = 60;
g_star = 60;

Y_eq = @(x) 0.145.*(g./g_star_S).*x.^(3/2).*exp(-x);
lambda = 0.264*(g_star_S./sqrt(g_star))*m_pl*m_chi*sigma;


x_f = @(a,m) 18+log(a/1e-27*m).*ones(size(x1));
Y_f = @(a,m) 2.7e-6/(a/1e-27*m).*ones(size(x1));

hold all



plot(x1,(Y_eq(x1)+Y_f(2e-15,100))./Y_eq(1),'b-','linewidth',3);hold on
plot(x1,(Y_eq(x1)+Y_f(2e-21,100))./Y_eq(1),'b.','linewidth',3)
plot(x1,(Y_eq(x1)+Y_f(2e-26,100))./Y_eq(1),'b-','linewidth',3)

plot(x1,Y_eq(x1)./Y_eq(1),'k-','linewidth',3);hold on 

plot(x1,(Y_eq(x1)+flipud((Y_f(2e-26,100).*tanh(x1/10))))./Y_eq(1),'g')
plot(x1,(Y_eq(x1)+flipud((Y_f(2e-21,100).*tanh(x1/10))))./Y_eq(1),'g')
plot(x1,(Y_eq(x1)+flipud((Y_f(2e-15,100).*tanh(x1/20))))./Y_eq(1),'g')

plot(x1,Y_eq(x1)+fliplr(Y_f(2e-26,100).*cosh(2*x1)))

ylim([1e-20,2])
xlim([1,1000])
set(gca,'yscale','log','xscale','log')
set(gcf,'position',[345   639   560   420])

%%


plot(x1,fliplr(Y_f(2e-26,100).*cosh(x1)))
ylim([1e-20,2])
xlim([1,1000])
set(gca,'yscale','log','xscale','log')
