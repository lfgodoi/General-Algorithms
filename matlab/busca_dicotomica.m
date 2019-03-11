% Fun��o de minimiza��o pelo do m�todo de Busca dicot�mica
function x_min = busca_dicotomica(f,ep,l,a,b)
% 1� argumento: (f) Fun��o objetivo
% 2� argumento: (ep) Dist�ncia entre um ponto intermedi�rio e o ponto m�dio
% 3� argumento: (l) Comprimento final do intervalo de incerteza
% 4� argumento: (a) Come�o do intervalo inicial
% 5� argumento: (b) Final do intervalo inicial

    % Inicializa��o do contador
    k = 1;

    % An�lise do comprimento do intervalo de incerteza
    while b - a >= l
    
        % Atualiza��o dos pontos intermedi�rios
        lambda = ((a + b)/2) - ep;
        mi = ((a + b)/2) + ep;
    
        % Atualiza��o do intervalo
        if f(lambda) < f(mi)
            b = mi;
        else
            a = lambda;
        end
        
        % Incremento do contador
        k = k + 1;

    end

    % Determina��o da solu��o �tima
    x_min = (a + b)/2;
    
    % Plotando a fun��o objetivo e indicando o ponto de m�nimo
    fplot(f,[-4,2],'Linewidth',2);
    hold on;
    fplot(x_min,f(x_min),'*','MarkerSize',10);

end