%sample mean and covariance matrix 
function [X, S] = sample_cov (A)
  row_num = size(A)(1);    %i.e. 100 
  col_num = size(A)(2);    %i.e. 1500 
  X = A - mean(A,2); 
  cov_mat = (1/col_num)* A * A';  
  %eigenvalue vector 
  [U , L] = eig(cov_mat);
  fig = figure; 
  plot(diag(L));
  title("eigenvalues of covariance matrix");
  xlabel("index"); 
  saveas(fig, "Task4.png");
  