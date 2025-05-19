close all;
clc;

% PARAMETROS %

mark = 15;
fsize = 8;
lwidth = 1;


% Crear la primera figura - Gráfica de cada columna AlfaX en función de Theta hasta Theta = 72
figure(1);
t = tiledlayout(1, 2, 'TileSpacing','compact', 'Padding','compact');
set(gcf, 'Units', 'centimeters', 'Position', [5, 5, 11, 5]);

% Primer Plot

ax1 = nexttile;

hBand = [20, 22, 24, 26, 28, 30];
bandgap = [0.004200, 0.003015, 0.002188, 0.001511, 0.001079, 0.000799];
Reg1 = - 0.167862.*hBand - 2.113537; %Encontrado en Python

plot(hBand, Reg1, 'LineWidth', 1, 'Color', 'r');
hold on;
plot(hBand, log(bandgap), '.', 'Color', 'k', 'markersize', mark);
hold off;

title(ax1, '$(a)$','Interpreter','latex');
xlabel(ax1, '$h_{Air}\,(mm)$', 'Interpreter','latex');
ylabel(ax1, 'Band Gap (log)', 'Interpreter','latex');
ylim(ax1, [-7.2, -5.4]);
xlim(ax1, [19, 31]);
xticks(ax1, hBand);

set(ax1, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'off', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025]);

% Segundo Plot

ax2 = nexttile;

hGamma = [18, 20, 22, 24, 26, 28];
gamma_1 = [0.015826, 0.007588, 0.004092, 0.002492, 0.001697, 0.001245];
Reg2 = -0.252883*hGamma + 0.218288; %Encontrado en Python

% Graficar los máximos en función de X
plot(hGamma, Reg2, 'LineWidth', 1, 'Color', 'r');

hold on;
plot(hGamma, log(gamma_1), '.', 'Color', 'k', 'markersize', mark);
hold off;

title(ax2, '$(b)$', 'Interpreter','latex');
xlabel(ax2, '$h_{Air}\,(mm)$', 'Interpreter','latex');
ylabel(ax2, '$\gamma_1$ (log)', 'Interpreter','latex');
ylim(ax2, [-7, -4]);
xlim(ax2, [17, 29]);
xticks(ax2, hGamma);

set(ax2, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'off', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025]);

print(gcf, 'BandGap', '-depsc', '-r300', '-vector'); % EPS vectorial