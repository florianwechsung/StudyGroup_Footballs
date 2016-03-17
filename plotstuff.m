

rho = 0.9:0.01:1.3;

xs = zeros(1,length(rho));

for i = 1:length(rho)
  [x,y] = analytical(rho(i));

  xs(i) = x(end); 

  %plot(x, y);
  %hold on;
end

plot(rho, -xs, 'LineWidth', 2);

xlabel('air density', 'FontSize', 20);
ylabel('lateral deflection', 'FontSize', 20);


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


