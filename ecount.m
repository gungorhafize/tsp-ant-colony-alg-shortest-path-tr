function count = ecount( fi )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    global STATS
    count = fi / STATS{length(STATS) - 1, 3};
end