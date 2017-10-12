function jbn = show_process0(a, b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
se = ones(3);
be = imerode(b,se);
b_boundary = b & ~be;                       % 连通域的边界

a_tmp = im2uint8(a);
a_tmp = cat(3,a_tmp,a_tmp,a_tmp);
b_boundary = im2uint8(b_boundary);
b_boundary0 = im2uint8(zeros(size(b_boundary)));
b_boundary = cat(3,b_boundary0,b_boundary,b_boundary0);
jbn = a_tmp + b_boundary;
imshow(jbn,[]);
end

