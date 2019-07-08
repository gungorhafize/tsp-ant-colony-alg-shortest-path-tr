function parents = reproduction
  
    global STATS
    global POPULATION_N
    global POPULATION
    
    parents = zeros(size(POPULATION));
    i = 1;
    count = 0;
    while count < POPULATION_N
        probs = rand(POPULATION_N, 1, 'double');
        while count < POPULATION_N && i <= POPULATION_N
            if probs(i) <= STATS{i, 4} % p > P.Select
                count = count + 1;
                parents(count, :) = POPULATION(i,:);
                STATS{i,6} = STATS{i,6} + 1;
                STATS{POPULATION_N + 1, 6} = STATS{POPULATION_N + 1, 6} + 1;
            end
            i = i + 1;
        end
        i = 1;
    end
end
