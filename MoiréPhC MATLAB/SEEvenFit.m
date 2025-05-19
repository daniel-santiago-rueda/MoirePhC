data = load('BandGapHAir/h_Air20.txt');
datafit1 = load('BandGapHAir/h_Air20_fitted_data.txt'); %Datos TB

x = data(:,1);
y = data(:,2);
xfit1 = datafit1(:,1);
yfit1 = datafit1(:,2); yfit2 = datafit1(:,3); yfit3 = datafit1(:,4); yfit4 = datafit1(:,5); 

% PARAMETROS %

mark = 10;
fsize = 8;
lwidth = 1;
yticksvals = 3.95:0.01:4;

figure;
set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 6, 5]);

plot(xfit1, yfit1, 'r', 'LineWidth', 1.5);
hold on;
plot(xfit1, yfit2, 'r', 'LineWidth', 1.5);
plot(xfit1, yfit3, 'r', 'LineWidth', 1.5);
plot(xfit1, yfit4, 'r', 'LineWidth', 1.5);
plot(x, y, '.', 'Color', 'k', 'markersize', mark);
hold off;

xticks(gca, [0.9, 1, 1.1]);
xticklabels(gca, {'$0.9\Gamma K$', '$K$','$0.1KM$'});
xlim(gca, [0.9, 1.1]);    
ylim(gca, [3.95, 4.0]); 
ylabel('Frecuencia (GHz)');
yticks(3.95:0.01:4);

title(gca, '$h_{Air} = 20mm$', 'FontSize', fsize, 'FontWeight', 'bold', 'interpreter', 'latex');

set(gca, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');

%print('SEEvenFit', '-depsc', '-r300'); % EPS vectorial
