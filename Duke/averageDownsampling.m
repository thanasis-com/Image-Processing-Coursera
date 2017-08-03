function downsampled=averageDownsampling(I, patchSize)
% Arguments:
%   I: input image
%   patchSize: size of sliding window
% Returns: 
%   downsampled: the original image downsampled by keeping only the
%                average value of each patch

[n, m]=size(I);

o=floor(n/patchSize);
p=floor(n/patchSize);

downsampled=zeros(o, p);

for i=1:o
    for j=1:p
        buffer=[];
        for k=i*patchSize-patchSize+1:i*patchSize
            for l=j*patchSize-patchSize+1:j*patchSize
                buffer=[buffer, I(k, l)];
            end
        end
        downsampled(i, j)=mean(buffer);
    end
end

downsampled=uint8(downsampled);
    









