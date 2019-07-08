function probability = pselect( fi )
%PSELECT Summary of this function goes here
%   Detailed explanation goes here
    global STATS
    probability = fi / STATS{length(STATS) - 2, 3};
end