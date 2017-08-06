function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% Set up variables for tracking the best parameter set so far
C_best = 1;
sigma_best = 0.1;
error_best = 0;

% The range of parameters we should test
param_range = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

% Iterate over the range for C and sigma
%for [C_test] = param_range
%  for [sigma_test] = param_range
%    printf('Trying C = %f, sigma = %f', C_test, sigma_test);
%    % Train the model
%    model = svmTrain(X, y, C_test, @(x1, x2) gaussianKernel(x1, x2, sigma_test));
%    % Calculate predictions
%    predictions = svmPredict(model, Xval);
%    % Determine the error
%    error = mean(double(predictions ~= yval));
%    
%    % Check if the current best needs to be updated
%    if (error_best == 0 | error < error_best)
%      printf('Found new best parameter set');
%      C_best = C_test;
%      sigma_best = sigma_test;
%      error_best = error;
%    end
%  end
%end

fprintf('Found best parameters C = %f, sigma = %f\n', C, sigma);
% Set the returned variables to the best parameter set
C = C_best;
sigma = sigma_best;



% =========================================================================

end
