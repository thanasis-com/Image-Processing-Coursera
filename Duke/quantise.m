function quantised=quantise(I, scale)
% Arguments:
%   I: input image
%   scale: factor of downsampling
% Returns: 
%   quantised: the original image quantised by the given scale

[n, m]=size(I);

quantised=zeros(n, m);

for i=1:n
    for j=1:m
        quantised(i, j)=floor(I(i, j)/scale)*scale;
    end
end

quantised=uint8(quantised);


