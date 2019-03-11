% Fun��o de minimiza��o pelo do m�todo de Busca Fibonacci
function x_min = busca_fibonacci(f,n,a,b)
% 1� argumento: (f) Fun��o objetivo
% 2� argumento: (n) Posi��o na sequ�ncia de Fibonacci
% 3� argumento: (a) Come�o do intervalo inicial
% 4� argumento: (b) Final do intervalo inicial

    % Inicializa��o do contador
    k = 1;
    
    % C�lculo do valor correspondente a n na sequ�ncia de Fibonacci
    Fn = zeros(n,1);
    Fn(1) = 1;
    Fn(2) = 1;
    for i = 3:n
            Fn(i) = Fn(i-1) + Fn(i-2); 
    end
    
    % C�lculo do intervalo de incerteza final
    l = (b - a)/Fn(n);

    % An�lise do comprimento do intervalo de incerteza
    while b - a >= l & k < (n - 1)
    
        % Atualiza��o dos pontos intermedi�rios
        lambda = a + (Fn(n-k-1)/Fn(n-k+1))*(b-a);
        mi = a + (Fn(n-k)/Fn(n-k+1))*(b-a);
    
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
