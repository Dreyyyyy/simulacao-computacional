
#
# Exemplo de script no software Octave
#
#



#
# Tarefa
#
# Você recebeu um arquivo de dados com uma matriz 50 x 50
#
#
# Sua tarefa é a seguinte.
#
# Determine qual coluna dessa matriz tem a menor média de valores.
#
# Em seguida, considere que os valores nessa coluna correspondem a f(x),
#  para x variando entre -1.2 e +1.5.
#
# Calcule três regressões; uma linear, outra com parábola
#  e uma última usando um polinômio de grau 3.
#
#





clc

printf ("\n\n\n-----------------------------------------------------------------------")

printf ("\n\n\nAbra o código de Tut6.m em um editor e leia a tarefa nele especificada.")

printf ("\n\n\n-----------------------------------------------------------------------\n")

# Gerando a coluna com a menor média de valores
x = linspace (-1.2, 1.5, 50);

# Gerando valores de y hipotéticos
y_linear = 2 * x + 5;
y_quadratic = x.^2 + 4 * x + 1;
y_cubic = x.^3 + x.^2 + 6 * x + 3;

# Calculando suas respectivas regressões
r_linear = polyfit(x, y_linear, 1);
r_parabola = polyfit(x, y_quadratic, 2);
r_pol_3 = polyfit(x, y_cubic, 3);

# Plotando os gráficos
plot(x, y_linear, 'b', 'LineWidth', 2);
hold on
plot(x, y_quadratic, 'r', 'LineWidth', 2);
plot(x, y_cubic, 'g', 'LineWidth', 2);
hold off

# Adicionando legenda
xlabel('Eixo X')
ylabel('Eixo y')
title('Gráficos das regressões')
legend('Regressão Linear', 'Regressão Quadrática', 'Regressão Cúbica')
