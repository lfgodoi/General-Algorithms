% Função de minimização pelo do método de Busca dicotômica
function x_min = busca_dicotomica(f,ep,l,a,b)
% 1º argumento: (f) Função objetivo
% 2º argumento: (ep) Distância entre um ponto intermediário e o ponto médio
% 3º argumento: (l) Comprimento final do intervalo de incerteza
% 4º argumento: (a) Começo do intervalo inicial
% 5º argumento: (b) Final do intervalo inicial

    % Inicialização do contador
    k = 1;

    % Análise do comprimento do intervalo de incerteza
    while b - a >= l
    
        % Atualização dos pontos intermediários
        lambda = ((a + b)/2) - ep;
        mi = ((a + b)/2) + ep;
    
        % Atualização do intervalo
        if f(lambda) < f(mi)
            b = mi;
        else
            a = lambda;
        end
        
        % Incremento do contador
        k = k + 1;

    end

    % Determinação da solução ótima
    x_min = (a + b)/2;
    
    % Plotando a função objetivo e indicando o ponto de mínimo
    fplot(f,[-4,2],'Linewidth',2);
    hold on;
    fplot(x_min,f(x_min),'*','MarkerSize',10);

end