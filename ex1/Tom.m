

function tom = Tom(X, y, theta, iter)

  m = length(y);
  bacon = [0;0];

  temp1 = 0;
  temp2 = 0;
  
  for j = 0:iter

    predictions = X*theta;
    errors = predictions - y;

    feta0 = sum(1/4 * errors);
    feta1 = sum(1/4 * errors .* X(:,2));

    temp1 = theta(1) - (0.001 * feta0);
    temp2 = theta(2) - (0.001 * feta1);
    
    theta(1) = temp1;
    theta(2) = temp2;
  end

  tom = [temp1;temp2];
  
end

