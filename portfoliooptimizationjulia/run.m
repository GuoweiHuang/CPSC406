clear all
close all

warning('off', 'MATLAB:table:ModifiedAndSavedVarnames');
num = 12;
rng(1);
[X, dates, names] = load_stocks("data", "2017-05-01","2017-12-31");
% [X1, dates1, names1] = load_stocks_soln('data', "2017-05-01","2017-12-31");
%disp_stocks(X, dates, names);
[r, Sig] = meancov(X);
h = portfolio_scatter(r, Sig, 1000);
%h2 = portfolio_scatter_soln(r',Sig,1000);
%[rrange] = return_range(r,Sig,num);
[Y,rates,sigs]= efficient_frontier(r,Sig,num);

%[Y,rates,sigs]= efficient_frontier_soln(r',Sig,num)
figure(h); hold on; plot(sigs, rates, 'ro-'); ylim([0 0.5]); xlim([0 max(sigs)]);


