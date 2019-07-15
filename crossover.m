function childrens = crossover( parents )
    global POPULATION_N
    global POPULATION
    
    pool = parents(randperm(size(parents,1)),:); % Karıştır
    childrens = zeros(size(POPULATION));
    
    % Genetik Değişim
    for i = 1 : 2 : POPULATION_N
        parent1 = pool(i, :);
        parent2 = pool(i + 1, :);
        
        childrens(i:i + 1, :) = cross(parent1, parent2);
    end
end
