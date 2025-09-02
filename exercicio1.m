function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t_roots = zeros(1,imax);

t_roots(1) = x0;

for p = 1:length(t_roots)-1
  if p ~=1
    erro(p)=abs((t_roots(p)-t_roots(p-1))/t_roots(p))
    if erro(p) < es
      break
    endif
  endif
  t_roots(p+1)=t_roots(p) - (func(t_roots(p)/func_d(t_roots(p))));
endfor
t=t_roots(p)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
