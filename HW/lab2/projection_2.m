  row_num = size(A)(1);    %i.e. 100 
  col_num = size(A)(2);    %i.e. 1500 
  X = A - mean(A,2); 
  cov_mat = (1/col_num)* A * A';  
  %eigenvalue vector 
  [U , L] = eig(cov_mat);
 %column vectors of A are x_1, x_2, ..., x_1500 
 x2d = U( :, 1:2)' * x; 
 %coefficent plot 
 fig = figure; 
 scatter(x2d(1,:), x2d(2,:)); 
 title("scatter plot of two coefficeints");
 saveas(fig, "Task5.png");
  