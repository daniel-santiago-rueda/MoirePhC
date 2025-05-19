close all;
clc;

% Leer el archivo CSV (usando punto y coma como delimitador)
datos = readtable('DatosMoire2024.csv', 'Delimiter', ';');

% Extraer los datos
theta = datos.Theta;
alfa0 = datos.Alfa0;
alfa1 = datos.Alfa1;
alfa2 = datos.Alfa2;
alfa3 = datos.Alfa3;
alfa4 = datos.Alfa4;
alfa5 = datos.Alfa5;
alfa6 = datos.Alfa6;
alfa8 = datos.Alfa8;
alfa9 = datos.Alfa9;
alfa10 = datos.Alfa10;
alfa11 = datos.Alfa11;
alfa12 = datos.Alfa12;
alfa14 = datos.Alfa14;
alfa16 = datos.Alfa16;
alfa18 = datos.Alfa18;
alfa20 = datos.Alfa20;


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

hold on;

% Índice hasta donde Theta = 72
idx_72 = find(theta <= 72, 1, 'last');

% Lista de valores X para la leyenda
valores_x = [0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 16, 18, 20];

% Colores para diferenciar las líneas
colores = lines(length(valores_x));

% Graficar cada columna
plot(theta(1:idx_72), alfa0(1:idx_72), 'LineWidth', 0.5, 'Color', colores(1,:));
plot(theta(1:idx_72), alfa1(1:idx_72), 'LineWidth', 0.5, 'Color', colores(2,:));
plot(theta(1:idx_72), alfa2(1:idx_72), 'LineWidth', 0.5, 'Color', colores(3,:));
plot(theta(1:idx_72), alfa3(1:idx_72), 'LineWidth', 0.5, 'Color', colores(4,:));
plot(theta(1:idx_72), alfa4(1:idx_72), 'LineWidth', 0.5, 'Color', colores(5,:));
plot(theta(1:idx_72), alfa5(1:idx_72), 'LineWidth', 0.5, 'Color', colores(6,:));
plot(theta(1:idx_72), alfa6(1:idx_72), 'LineWidth', 0.5, 'Color', colores(7,:));
plot(theta(1:idx_72), alfa8(1:idx_72), 'LineWidth', 0.5, 'Color', colores(8,:));

% Leyenda, título y etiquetas de ejes
legend_labels = cell(length(valores_x), 1);
for i = 1:length(valores_x)
    legend_labels{i} = ['\alpha = ' num2str(valores_x(i))];
end
legend(legend_labels, 'Location', 'best');


title(ax1, '$(a)$','Interpreter','latex');
xlabel(ax1, '$\theta (^\circ)$', 'Interpreter','latex');
ylabel(ax1, 'Voltaje (V)');
grid on;
hold off;

set(ax1, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025]);


ax2 = nexttile;

% Calcular los máximos de cada columna hasta theta = 72
max_valores = zeros(length(valores_x), 1);
max_valores(1) = max(alfa0(1:idx_72));
max_valores(2) = max(alfa1(1:idx_72));
max_valores(3) = max(alfa2(1:idx_72));
max_valores(4) = max(alfa3(1:idx_72));
max_valores(5) = max(alfa4(1:idx_72));
max_valores(6) = max(alfa5(1:idx_72));
max_valores(7) = max(alfa6(1:idx_72));
max_valores(8) = max(alfa8(1:idx_72));
max_valores(9) = max(alfa9(1:idx_72));
max_valores(10) = max(alfa10(1:idx_72));
max_valores(11) = max(alfa11(1:idx_72));
max_valores(12) = max(alfa12(1:idx_72));
max_valores(13) = max(alfa14(1:idx_72));
max_valores(14) = max(alfa16(1:idx_72));
max_valores(15) = max(alfa18(1:idx_72));
max_valores(16) = max(alfa20(1:idx_72));

% Graficar los máximos en función de X
plot(valores_x, max_valores, '.', 'Color', 'k', 'markersize', mark);
title(ax2, '$(b)$', 'Interpreter','latex')
xlabel(ax2, '$\alpha (^\circ)$', 'Interpreter','latex');
ylabel(ax2, 'Voltaje Máximo');

set(ax2, 'FontSize', fsize, 'FontName', 'Times', 'LineWidth', lwidth, ...
    'XGrid', 'on', 'YGrid', 'off', 'GridLineStyle', '--', 'Box', 'on',...
    'XColor', 'k', 'YColor', 'k', ...
    'ClippingStyle', 'rectangle', 'TickLength', [0.02 0.025]);

%print(gcf, 'Moire2024', '-depsc', '-r300', '-vector'); % EPS vectorial
