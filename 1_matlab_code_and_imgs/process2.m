function jbn = process2(a, dam, elevation)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a_tmp = a;
ind_water = find(a == elevation);       % 集水处
ind_other = find(a ~= elevation);       % 其他高地

a_tmp0 = zeros(size(a_tmp));
a_tmp0 = im2uint8(a_tmp0);
a_tmp0(ind_water) = 255;                % 用于表示蓝色区域，在下面cat函数中，仅添加其蓝色分量 

a_tmp1 = zeros(size(a_tmp));
a_tmp1 = im2uint8(a_tmp1);
a_tmp1(ind_other) = a(ind_other);

jbn = cat(3, a_tmp1 + dam, a_tmp1 + dam, a_tmp1 + dam + a_tmp0);  % 水坝和高地3通道都要，集水处仅要蓝色分量

end

