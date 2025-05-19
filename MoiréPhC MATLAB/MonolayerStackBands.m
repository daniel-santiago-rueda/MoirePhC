%%% MONOLAYER SIM %%%

dataMono = load('Monolayer/MonolayerNearDirac.txt');

% Separar las columnas de datos
x = dataMono(:,1); y = dataMono(:,2);

%%% MONOLAYER FIT %%%

dataMonofit = load('Monolayer/Monolayer_fitted_data.txt');

x2 = dataMonofit(:,1); y1 = dataMonofit(:,2); y2 = dataMonofit(:,3);
omega0 = 3.964962;

% PARAMETROS %

mark = 12;
fsize = 8;
lwidth = 1;
yticksvals = 3.93:0.01:4;


%%%%%%   FIGURA   %%%%%%%

figure;
set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 6, 5]);

hold on;
plot(x2, y1, 'Color', 'r', 'LineWidth', 1.5);
plot(x2, y2, 'Color', 'r', 'LineWidth', 1.5);
plot(x, y, '.', 'Color', 'k', 'markersize', mark);
yline(omega0, '--', 'LineWidth', 1)
text(1.12, 0.5, '$\nu_0$', ...
     'Units', 'normalized', ...
     'Interpreter', 'latex', ...
     'HorizontalAlignment', 'right', ...
     'VerticalAlignment', 'middle', ...
     'FontSize', 11);
hold off;

xticks([0.95, 1, 1.05]);
xticklabels({'$0.95\Gamma K$', '$K$','$0.05KM$'});
ylabel('Frecuencia (GHz)');
xlim([0.95, 1.05]);    
ylim([3.93, 4]); 

set(gca, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', 'YTick', yticksvals,...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025], "TickLabelInterpreter",'latex');

print('TBMonolayer', '-depsc', '-r300'); % EPS vectorial
