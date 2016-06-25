function show_volume( volume, dim )
%SHOW_VOLUME Summary of this function goes here
%   Detailed explanation goes here

k = find(volume);
[i1, i2, i3] = ind2sub(dim, k);
scatter3(i1, i2, i3, 'k.'); axis equal
 
end

