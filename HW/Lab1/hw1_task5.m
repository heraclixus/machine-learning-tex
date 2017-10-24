function w = hw1_task5(X,t,n) 
 % Z matrix is of dimension: N x (M+1) 
 Z = ones(12,n+1);
 for i = 2:(n+1)   %modify column vectors  
   Z(:,i)= X.^(i-1); 
   end 
 % after computing the Z matrix apply the linsolve
 % w should be of dimension (M+1) x 1: a column vector
  A = mtimes(Z.',Z) 
  B = Z.' * t.' 
  w = linsolve(A,B)
 end 
