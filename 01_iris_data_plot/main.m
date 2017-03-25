% ---------------------------------------------------------------------------------------------------------------------
% Matrix X
% PW - Petal width
% PL - Petal length
% SW - Sepal width
% SL - Sepal length
%
% PW  PL  SW  SL
% x11 x12 x13 x14
% x21 x22 x23 x24
% ...
% xn1 xn2 xn3 xn4
%
% Vector y (0, 1, 2)
% y1
% y2
% ...
% yn
% ---------------------------------------------------------------------------------------------------------------------

% Loading dataset.
load_iris;

mkdir plots;

% We plot every 2 non-equal attributes for all three given classes.
for i = 1:4
    for j = i+1:4
        plot_data(i, j, decode_attribute(i), decode_attribute(j), X, y);
        printf('Plotting: %s - %s\n', decode_attribute(i), decode_attribute(j));
    endfor
endfor
