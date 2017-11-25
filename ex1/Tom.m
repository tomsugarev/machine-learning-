

function tom = Tom(X, y, theta, iter)

  m = length(y)
  bacon = [0;0]
  for j = 0:iter

    predictions = X*theta;
    errors   = (predictions - y);

%    J = 1/(2*m) * sum(errors);
  
    
    bacon = bacon - 0.001 * 1/(2*m) * sum(errors .* X);
    
  end
  
  tom = bacon;
  
end

