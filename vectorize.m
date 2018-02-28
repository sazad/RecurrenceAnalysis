% Sonia Azad
% February 27, 2018

% This M-File is performs the first step of Recurrence Quantification 
% Analysis of NonLinear Dynamical Systems. 
% The function vectorize embeds a linear vector of sequential 
% scalar measurements (data_raw) into a higher dimensional space 
% by the method of time delay according to given
% integer dim > 0 and integer delay > 0. 
function data = vectorize(data_raw, dim, delay)

len = length(data_raw);

%loop over the columns
for i = 1:dim
    start = (i-1)*delay+1; %find starting index
    fin = len-(dim-i)*delay; %find ending index
    data(:, i) = data_raw(start:fin); 
end
    
end
