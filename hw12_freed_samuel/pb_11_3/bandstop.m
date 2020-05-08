% Samuel Freed
% Problem 11.3 (modified)

function rv = bandstop(F, band)
[x,y] = size(band);
rate = size(F,1);
if x~=1 || y~=2
    error('Band matrix input size invalid');
elseif any(rem(band,1))
    error('Non-integer in band matrix');
elseif any(band<0)
    error('Negative value in band matrix');
elseif band(1)>band(2)
    error('Band matrix out of order');
else
    for i = 1:2
        if band(i) > 0.5*rate
            error('Band threshold greater than Nyquist freq');
        end
    end
end
rv = [F(1:band(1),1);
     zeros(rate - 2*band(1) + 1, size(F,2));
     F(band(2):end)];

end