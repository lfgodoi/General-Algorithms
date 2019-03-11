% Fun��o de minimiza��o atrav�s do m�todo de Busca por Ajuste Quadr�tico
function x_min = busca_ajuste_quadratico(f,ep,points)

    % Inicializando a vari�vel do ponto de m�nimo
    x_min = points(3);
    
    % Determina-se o polin�mio do segundo grau p(x) que passa pelos pontos;
    syms p(x);
    p(x) = (((x-points(2))*(x-points(3)))/((points(1)-points(2))*(points(1)-points(3))))*f(points(1)) ...
           + (((x-points(1))*(x-points(3)))/((points(2)-points(1))*(points(2)-points(3))))*f(points(2)) ...
           + (((x-points(1))*(x-points(2)))/((points(3)-points(1))*(points(3)-points(2))))*f(points(3));

       
    d_f = diff(f);
    criterio = abs(d_f(x_min)); 
    disp(criterio);
    
    % Determina-se o m�nimo da fun��o polinomial p(x) (1a itera��o);
    while criterio >= ep; % Verificando condi��o de m�nimo antes de cada itera��o

        % Determinando o m�nimo de p(x)
        x_min = (1/2)*(((points(2)^2-points(3)^2)*f(points(1)) ...
                +(points(3)^2-points(1)^2)*f(points(2)) ...
                +(points(1)^2-points(2)^2)*f(points(3))) ...
                /((points(2)-points(3))*f(points(1)) ...
                +(points(3)-points(1))*f(points(2)) ...
                +(points(1)-points(2))*f(points(3)))); 
        
        % Escolher novos pontos para interpola��o;
        if x_min >= points(1) & x_min <= points(3)
            if f(x_min) < f(points(3))
                points = [points(1) x_min points(3)];
            elseif f(x_min) > f(points(3))
                points = [x_min points(3) points(2)];
            end
        else
            if f(points(3)) < f(x_min)
                points = [points(1) points(3) x_min];
            elseif f(points(3)) > f(x_min)
                points = [points(3) x_min points(2)];
            end
        end
        
        criterio = abs(d_f(x_min));
        
    end
        
end
