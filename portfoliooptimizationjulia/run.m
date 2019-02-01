clear all
close all

warning('off', 'MATLAB:table:ModifiedAndSavedVarnames');
num = 1000;
rng(1);
[X, dates, names] = load_stocks("data", "2017-05-01","2017-12-31");
% [X1, dates1, names1] = load_stocks_soln('data', "2017-05-01","2017-12-31");
%disp_stocks(X, dates, names);
[r, Sig] = meancov(X);
%h = portfolio_scatter(r, Sig, num);

[max_r,min_v] = return_range(r,Sig,num);

