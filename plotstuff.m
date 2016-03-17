


clear all;

revs = [0 5 10 20 30 40 50];

  xv1 = solveTheOde(0, 20);
  xv2 = solveTheOde(2, 20);
  xv3 = solveTheOde(5, 20);
  xv4 = solveTheOde(30, 20);
  xv5 = solveTheOde(50, 30);

plot(xv1(:,1), xv1(:,2), 'LineWidth', 1);
hold on;
plot(xv2(:,1), xv2(:,2), 'LineWidth', 1);
plot(xv3(:,1), xv3(:,2), 'LineWidth', 1);
plot(xv4(:,1), xv4(:,2), 'LineWidth', 1);
plot(xv5(:,1), xv5(:,2), 'LineWidth', 1);


lgd = legend('0', '2', '5', '30', '50');
set(lgd, 'FontSize', 20);
xlabel('kicking direction', 'FontSize', 20);
ylabel('height', 'FontSize', 20);
axis([-23, 98, -92, 59]);

%rho = 0.9:0.01:1.3;

%xs = zeros(1,length(rho));

%for i = 1:length(rho)
%  [x,y] = analytical(rho(i));
%
%  xs(i) = x(end); 
%
%  %plot(x, y);
%  %hold on;
%end

%plot(rho, -xs, 'LineWidth', 2);

%xlabel('air density', 'FontSize', 20);
%ylabel('lateral deflection', 'FontSize', 20);


%solveTheOde;
%analytical;
%pl = plot(-xv(:,2), xv(:,1),'b', 'LineWidth', 2);
%hold on;
%plot(x0,y, 'm', 'LineWidth', 2)
%plot(x, y, 'r', 'LineWidth', 2)
%lgd = legend('numerical', 'analytical 1st order', 'analytical 2nd order');
%set(lgd, 'FontSize', 20);
%xlabel('lateral deflection', 'FontSize', 20);
%ylabel('kicking direction', 'FontSize', 20);

%print('numericalVsAnalytical', '-depsc');


