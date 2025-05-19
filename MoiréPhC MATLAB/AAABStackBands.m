clear;
close all;
clc;

%%%%% AA STACK %%%%%
%--------------------

data1 = load('AA-AB Stack/AAStack.txt');
data2 = load('AA-AB Stack/AAStackZoom.txt');
datafit = load('AA-AB Stack/AAStack_fitted_data.txt');

% Separar las columnas de datos
x1 = data1(:,1); x2 = data2(:,1);
y1 = data1(:,2); y2 = data2(:,2);
x3 = datafit(:, 1); yfit1 = datafit(:,2); 
yfit2 = datafit(:,3); yfit3 = datafit(:,4); yfit4 = datafit(:,5);

% PARAMETROS %

mark = 10;
fsize = 8;

figure;

tiledlayout(1, 2, 'TileSpacing','compact', 'Padding','compact');

set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 11, 6]);

ax1 = nexttile;
plot(x1, y1, '.', 'Color', 'k', 'markersize', mark);
xlim(ax1, [0, 3])
ylim(ax1, [3.48, 4.42])
xticks(ax1, [0, 1, 2, 3]);
xticklabels(ax1, {'$\Gamma$', '$K$','$M$', '$\Gamma$'});

yticks(ax1, 3.5:0.3:4.4);
ylabel(ax1, 'Frecuencia (GHz)')

title(ax1, '$(a)$', 'Interpreter','latex');
set(ax1, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');

%%% ZOOM %%%

ax2 = nexttile;

plot(x3, yfit1, 'r', 'LineWidth', 1.5);
hold on;
plot(x3, yfit2, 'r', 'LineWidth', 1.5);
plot(x3, yfit3, 'r', 'LineWidth', 1.5);
plot(x3, yfit4, 'r', 'LineWidth', 1.5);
plot(x2, y2, '.', 'Color', 'k', 'markersize', mark);
annotation('doublearrow', [0.682 0.682], [0.366 0.725], ...
    'Color', [1 0.5 0], ...       % naranja
    'LineWidth', 1.5, ...
    'Head1Width', 6, ...          % tamaño de la primera punta
    'Head2Width', 6, ...
    'Head1Length', 6, ...
    'Head2Length', 6);
text(0.48, 0.57, '$2\gamma_1$', ...
     'Units', 'normalized', ...
     'Color', [1 0.5 0], ...
     'Interpreter', 'latex', ...
     'HorizontalAlignment', 'right', ...
     'VerticalAlignment', 'middle', ...
     'FontSize', 11);
hold off;

xlim(ax2, [0.8, 1.4])
ylim(ax2, [3.79, 4.11])
xticks(ax2, [0.8, 1, 1.4]);
xticklabels(ax2, {'$0.8\Gamma K$', '$K$','$0.4KM$'});

yticks(ax2, 3.8:0.1:4.1);

title(ax2, '$(b)$', 'Interpreter','latex');
set(ax2, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');

%print(gcf, 'AAStackBands', '-depsc');

%%%%% AB STACK %%%%%
%--------------------

data1 = load('AA-AB Stack/ABStack.txt');
data2 = load('AA-AB Stack/ABStackZoom.txt');
datafit = load('AA-AB Stack/ABStack_fitted_data.txt');

% Separar las columnas de datos
x1 = data1(:,1); x2 = data2(:,1);
y1 = data1(:,2); y2 = data2(:,2);
x3 = datafit(:, 1); 
yfit1 = datafit(:,2); yfit2 = datafit(:,3); yfit3 = datafit(:,4); yfit4 = datafit(:,5);

% PARAMETROS %

mark = 10;
fsize = 8;

figure;
t = tiledlayout(1, 2, 'TileSpacing','compact', 'Padding','compact');

set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 11, 6]);

ax1 = nexttile;
plot(x1, y1, '.', 'Color', 'k', 'markersize', mark);
xlim(ax1, [0, 3])
ylim(ax1, [3.48, 4.42])
xticks(ax1, [0, 1, 2, 3]);
xticklabels(ax1, {'$\Gamma$', '$K$','$M$', '$\Gamma$'});

yticks(ax1, 3.5:0.3:4.4);
ylabel(ax1, 'Frecuencia (GHz)')

title(ax1, '$(a)$', 'Interpreter','latex');
set(ax1, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');

%%% ZOOM %%%

ax2 = nexttile;

plot(x3, yfit1, 'r', 'LineWidth', 1.5);
hold on;
plot(x3, yfit2, 'r', 'LineWidth', 1.5);
plot(x3, yfit3, 'r', 'LineWidth', 1.5);
plot(x3, yfit4, 'r', 'LineWidth', 1.5);
plot(x2, y2, '.', 'Color', 'k', 'markersize', mark);
annotation('doublearrow', [0.749 0.749], [0.39 0.725], ...
    'Color', [1 0.5 0], ...       % naranja
    'LineWidth', 1.5, ...
    'Head1Width', 6, ...          % tamaño de la primera punta
    'Head2Width', 6, ...
    'Head1Length', 6, ...
    'Head2Length', 6);
text(0.65, 0.68, '$2\gamma_1$', ...
     'Units', 'normalized', ...
     'Color', [1 0.5 0], ...
     'Interpreter', 'latex', ...
     'HorizontalAlignment', 'right', ...
     'VerticalAlignment', 'middle', ...
     'FontSize', 11);
hold off;

xlim(ax2, [0.8, 1.2])
ylim(ax2, [3.78, 4.12])
xticks(ax2, [0.8, 1, 1.2]);
xticklabels(ax2, {'$0.8\Gamma K$', '$K$','$0.2KM$'});

yticks(ax2, 3.8:0.1:4.1);

title(ax2, '$(b)$', 'Interpreter','latex');
set(ax2, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');


%print(gcf, 'ABStackBands', '-depsc');


%%%% SE EVEN %%%%
%-----------------

data = load('BandGapHAir/h_Air20Full.txt');

% Separar las columnas de datos
x = data(:,1);
y = data(:,2);

% PARAMETROS %

mark = 8;
fsize = 8;

figure;

set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 6, 6]);

plot(x, y, '.', 'Color', 'k', 'markersize', mark);
xlim([0, 3])
ylim([3.28, 4.22])
xticks([0, 1, 2, 3]);
xticklabels({'$\Gamma$', '$K$','$M$', '$\Gamma$'});

yticks(3.3:0.3:4.2);
ylabel('Frecuencia (GHz)')

set(gca, 'FontSize', fsize, 'FontName', 'Times','LineWidth', 1, 'XGrid', 'on', 'YGrid', 'off', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k',...
    'ClippingStyle', 'rectangle', 'TickLength', [0.025, 0.02], ...
    "TickLabelInterpreter",'latex');

%print(gcf, 'SEEvenBands', '-depsc');