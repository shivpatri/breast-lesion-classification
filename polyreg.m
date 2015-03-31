function [co_rel,std_err,poly_coeff] = polyreg(data,degree)
%Abstract - First it fits a polynomial hypothesis of specified degree and then calculates correlation coefficient and standard error.
%Functions used - polyfit,polyval,corr2,abs,sum,length.
%fitting a polynomial to the given data
poly_coeff = polyfit(data(:,1),data(:,2),degree);
rad = polyval(poly_coeff,data(:,1));
%finding the correlation coefficient
co_rel = (corr2(data(:,2),rad)).^2;
%finding the standard error of the predicted polynomial
std_err = (sum(abs(data(:,2)-rad))/length(rad));
end