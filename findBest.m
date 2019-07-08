function best = findBest()

    global POPULATION
    global POPULATION_N
    global STATS
    
    max   = STATS(POPULATION_N + 3, 3);
    best  = POPULATION(1, :);
    dbest = distanceForPath(best);
    for i = 2 : POPULATION_N
        path = POPULATION(i, :);
        dist = distanceForPath(path);
        if (dist < dbest)
            best = path;
            dbest = dist;
        end
    end
end