% Função de minimização pelo do método de Busca Fibonacci
function x_min = busca_fibonacci(f,n,a,b)
% 1º argumento: (f) Função objetivo
% 2º argumento: (n) Posição na sequência de Fibonacci
% 3º argumento: (a) Começo do intervalo inicial
% 4º argumento: (b) Final do intervalo inicial

    % Inicialização do contador
    k = 1;
    
    % Cálculo do valor correspondente a n na sequência de Fibonacci
    Fn = zeros(n,1);
    Fn(1) = 1;
    Fn(2) = 1;
    for i = 3:n
            Fn(i) = Fn(i-1) + Fn(i-2); 
    end
    
    % Cálculo do intervalo de incerteza final
    l = (b - a)/Fn(n);

    % Análise do comprimento do intervalo de incerteza
    while b - a >= l & k < (n - 1)
    
        % Atualização dos pontos intermediários
        lambda = a + (Fn(n-k-1)/Fn(n-k+1))*(b-a);
        mi = a + (Fn(n-k)/Fn(n-k+1))*(b-a);
    
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
