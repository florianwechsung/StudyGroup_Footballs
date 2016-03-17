solveTheOde;
analytical;
plot(-xv(:,2), xv(:,1),'b', 'LineWidth', 2)
hold on;
plot(x, y, 'r', 'LineWidth', 2)
lgd = legend('numerical', 'analytical');
set(lgd, 'FontSize', 20);
xlabel('lateral deflection', 'FontSize', 20);
ylabel('kicking direction', 'FontSize', 20);
%print('numericalVsAnalytical', '-depsc');


