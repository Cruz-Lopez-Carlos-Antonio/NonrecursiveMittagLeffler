function V = Coeff_G(n, a)
%   Coeff_G  (versión MATLAB no recursiva, numérica)
% n : entero >= 0
% a : vector fila/columna con al menos n elementos (a(1),...,a(n))
% V : matriz (n+1) x (n+1)

    V = zeros(n+1, n+1);
    V(:,1) = 1;                 % vector[m][0] = 1

    % columna 2: sumas parciales
    for m = 1:n
        V(m+1, 2) = sum(a(1:m));
    end

    % columnas k>=3
    for m = 2:n
        for k = 2:m
            if k == m
                V(m+1, k+1) = a(1)^m;
            else
                num = a(m - k + 1) * V(m, k);
                V(m+1, k+1) = V(m, k+1) + num;
            end
        end
    end
end
