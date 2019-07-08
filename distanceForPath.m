function distance = distanceForPath( path )
    global DISTANCE_M
    dist = 0;
    for i = 1 : length(path) - 1
        from = path(i);
        to   = path(i + 1);
        dist = dist + DISTANCE_M(from, to);
    end
    distance = dist;
end