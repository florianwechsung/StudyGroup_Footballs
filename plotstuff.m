solveTheOde;
analytical;
pl = plot(-xv(:,2), xv(:,1),'b', 'LineWidth', 2);
hold on;
plot(x0,y, 'm', 'LineWidth', 2)
plot(x, y, 'r', 'LineWidth', 2)
lgd = legend('numerical', 'analytical 1st order', 'analytical 2nd order');
set(lgd, 'FontSize', 20);
xlabel('lateral deflection', 'FontSize', 20);
ylabel('kicking direction', 'FontSize', 20);

%print('numericalVsAnalytical', '-depsc');


