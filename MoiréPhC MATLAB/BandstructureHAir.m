data1 = load('BandGapHAir/h_Air20.txt'); %h_Air = 20mm
data2 = load('BandGapHAir/h_Air22.txt'); %h_Air = 22mm
data3 = load('BandGapHAir/h_Air24.txt'); %h_Air = 24mm

x1 = data1(:,1); x2 = data2(:,1); x3 = data3(:,1);
y1 = data1(:,2); y2 = data2(:,2); y3 = data3(:,2);

% PARAMETROS %

mark = 10;
fsize = 8;
lwidth = 1;
yticksvals = 3.95:0.01:4;


%%%%%%   FIGURA   %%%%%%%

figure;
t = tiledlayout(1, 3, 'TileSpacing','compact', 'Padding','compact');
set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 14, 5]);

% Primer Plot

ax1 = nexttile;
plot(x1, y1,'.', 'Color', 'k', 'markersize', mark);

xticks(ax1, [0.9, 1, 1.1]);
xticklabels(ax1, {'$0.9\Gamma K$', '$K$','$0.1KM$'});
ylabel('Frecuencia (GHz)');
xlim(ax1, [0.9, 1.1]);    
ylim(ax1, [3.95, 4.0]); 

title(ax1, '$h_{Air} = 20mm$', 'FontSize', fsize, 'FontWeight', 'bold', 'interpreter', 'latex');
set(ax1, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', 'YTick', yticksvals,...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025], "TickLabelInterpreter",'latex');

% Segundo Plot

ax2 = nexttile;

plot(x2, y2, '.', 'Color', 'k', 'markersize', mark);

xticks(ax2, [0.9, 1, 1.1]);
xticklabels(ax2, {'$0.9\Gamma K$', '$K$','$0.1KM$'});
xlim(ax2, [0.9, 1.1]);    
ylim(ax2, [3.95, 4.0]); 

title(ax2, '$h_{Air} = 22mm$', 'FontSize', fsize, 'FontWeight', 'bold', 'interpreter', 'latex');
set(ax2, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', 'YTick', yticksvals, 'YTickLabel', [], ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025], "TickLabelInterpreter",'latex');

% Tercer Plot

ax3 = nexttile;
plot(x3, y3, '.', 'Color', 'k', 'markersize', mark);

xticks(ax3, [0.9, 1, 1.1]);
xticklabels(ax3, {'$0.9\Gamma K$', '$K$','$0.1KM$'});
xlim(ax3, [0.9, 1.1]);    
ylim(ax3, [3.95, 4.0]); 

title(ax3, '$h_{Air} = 24mm$', 'FontSize', fsize, 'FontWeight', 'bold', 'interpreter', 'latex');
set(ax3, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', 'YTick', yticksvals, 'YTickLabel', [], ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025], "TickLabelInterpreter",'latex');

linkaxes([ax1, ax2, ax3], 'y');
ax1.TickDir = 'out'; ax2.TickDir = 'out'; ax3.TickDir = 'out';

%print('BandStructure', '-depsc', '-r300'); % EPS vectorial
