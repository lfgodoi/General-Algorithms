% Função de minimização através do método de Busca de Newton
function x_min = busca_newton(f,ep)
% 1º argumento: (f) Função objetivo
% 2º argumento: (ep) Critério de convergência

    % Cálculo da primeira e da segunda derivada da função objetivo
    d1_f = diff(f,1);
    d2_f = diff(f,2);
    
    % Inicializa dos pontos x_futuro
    x_atual = 0;
    x_futuro = 1;
    
    % Sequência iterativa
    while abs((x_futuro - x_atual)) >= ep
        x_futuro = x_atual - d1_f(x_atual)/d2_f(x_atual);
        x_atual = x_futuro;
    end
    
    % Determinação da solução ótima
    x_min = x_atual;
    
    % Plotando a função objetivo e indicando o ponto de mínimo
    fplot(f,[-4,2],'Linewidth',2);
    hold on;
    fplot(x_min,f(x_min),'*','MarkerSize',10);
    
end