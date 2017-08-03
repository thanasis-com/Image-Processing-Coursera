function averaged=neighbourAverage(I, neighbours)
% Arguments:
%   I: input image
%   neighbours: the size of the neighbourhood
% Returns: 
%   averaged: the original image where each pixel's value is equal
%               to the average of its neighbouring pixels

[n, m]=size(I);

averaged=zeros(n, m);

for i=1:n
    for j=1:m
        %for each pixel construct distance map
        buffer=[];
        for k=max(1, (i-neighbours)):min(n, (i+neighbours))
            for l=max(1, (j-neighbours)):min(m, (j+neighbours))
                myDist=sqrt((l-j)^2+(k-i)^2);
                if myDist<=sqrt(neighbours-1)
                    buffer=[buffer, I(k, l)];
                end
            end
        end
        averaged(i, j)=mean(buffer);
    end
end
        
averaged=uint8(averaged);
    
        
        
        
        
        
        
        
        
        
