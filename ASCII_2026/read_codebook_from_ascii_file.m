function [x, n, M] = read_codebook_from_ascii_file(filename)
% function [x, n, M] = read_codebook_from_ascii_file(filename)
% reads a complex-valued codebook from ASCII file
% ASCII file should contain a table of real-valued numbers
% Each row represents one signal from the codebook
% The first half of columns represents real part of numbers,
% the seconf half of columns represents imaginary part of numbers
% filename - ASCII file name, including extension
% x - codebook, complex-valued 2D (M-by-n) array, signals along rows
% n - number of complex-valued samples in the codebook signals
% M - number of signals in the codebook

s = load(filename, '-ascii');
if mod(size(s, 2), 2)
    error('ASCII table should contain even number of columns!')
end
n = size(s, 2)/2;
M = size(s, 1);
x = complex(s(:,1:n), s(:,n+1:2*n));
