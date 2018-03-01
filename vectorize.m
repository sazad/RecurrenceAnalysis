% Sonia Azad
% February 27, 2018

% This M-file embeds a linear vector of sequential
% scalar measurements into a higher dimensional space 
% by the method of time delay.
% 
% parameters:
%     data_raw: n x 1 size column vector of data 
%     dim: positive integer
%     delay: positive integer
% returns:
%     data: m x dim size matrix
function data = vectorize(data_raw, dim, delay)

len = length(data_raw);

%loop over the columns
for i = 1:dim
    start = (i-1)*delay+1; %find starting index
    fin = len-(dim-i)*delay; %find ending index
    data(:, i) = data_raw(start:fin); 
end
    
end
