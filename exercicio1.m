function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t_roots = zeros(imax, 1);
t_roots(1) = x0;

for ii = 1:imax - 1
    t_roots(ii+1) = t_roots(ii) - func(t_roots(ii)) / func_d(t_roots(ii));
    
    erro = abs((t_roots(ii+1) - t_roots(ii)) / t_roots(ii+1));
    
    if erro < es
        break;
    endif
endfor

t = t_roots(ii+1);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
