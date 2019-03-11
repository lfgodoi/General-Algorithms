% Fun��o de minimiza��o atrav�s do m�todo de Busca de Newton
function x_min = busca_newton(f,ep)
% 1� argumento: (f) Fun��o objetivo
% 2� argumento: (ep) Crit�rio de converg�ncia

    % C�lculo da primeira e da segunda derivada da fun��o objetivo
    d1_f = diff(f,1);
    d2_f = diff(f,2);
    
    % Inicializa dos pontos x_futuro
    x_atual = 0;
    x_futuro = 1;
    
    % Sequ�ncia iterativa
    while abs((x_futuro - x_atual)) >= ep
        x_futuro = x_atual - d1_f(x_atual)/d2_f(x_atual);
        x_atual = x_futuro;
    end
    
    % Determina��o da solu��o �tima
    x_min = x_atual;
    
    % Plotando a fun��o objetivo e indicando o ponto de m�nimo
    fplot(f,[-4,2],'Linewidth',2);
    hold on;
    fplot(x_min,f(x_min),'*','MarkerSize',10);
    
end