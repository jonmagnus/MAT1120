function rot = sdrot(p)
  
  p /= p(1);
  
  n = size(p)(2);
  n--;  %Tilsvarer graden paa polynomet
  A = [zeros(n - 1,1),eye(n-1);-flip(p(1,2:n+1),2)];
  
  x = rand(n,1);
  tol = 1e-6;
  
  hit = 0;
  
  for j = 1:100
    
    x = A*x;
    
    [maxval,maxnr] = max(abs(x));
    rot = x(maxnr);
    x = (1/rot)*x;
    
    error = max(abs(A*x-rot*x));
    if error < tol
      hit = 1;
      break;
    end
    
  end  
  
    if ~hit
      disp("ERROR: Fant ingen losning etter 100 ...
iterasjoner\n");
      rot = 0;
    end  
    
  
endfunction
