function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Set first regulatizatin coefficient to zero to skip it when summing
% over all elements in theta
reg_theta = [0, theta'(2:end)]';
% Calculate the regularization term
J_reg = ((lambda / (2 * m)) * sum(reg_theta .^ 2));

% Let's calculate the hypothesis
h = X * theta;
% And unregularized cost function
J_unreg = sum((h - y) .^2) / (2 * m);

% Return the correct cost
J = J_unreg + J_reg;

% And calculate the gradients
grad = X' * (h - y) / m + (lambda / m) * reg_theta;








% =========================================================================

grad = grad(:);

end
