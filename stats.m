function stats()
    %STATS Summary of this function goes here
    %   Detailed explanation goes here
    % Build stats table
    global STATS
    global POPULATION_N
    global POPULATION
    
    for i = 1 : POPULATION_N
        path = POPULATION(i,:);
        STATS{i, 1} = num2str(path); % Kromozom
        STATS{i, 2} = distanceForPath(path); % Uzakl�k
        STATS{i, 3} = fitness(path); % f(x)
        STATS{i, 4} = 0.0; % P. Select yani Se�ilen Yol
        STATS{i, 5} = 0.00; % Expected Count/ Beklenen Say�
        STATS{i, 6} = 0; % Actual Count/ Ger�ek Say�
    end

    % Compute SUM, AVG & MAX - Toplam, Ortalama ve Maksimum de�erlerin
    % hesaplanmas�
    STATS{POPULATION_N + 1, 1} = 'SUM';
    STATS{POPULATION_N + 1, 3} = sum(cell2mat(STATS(1:POPULATION_N, 3)));
    STATS{POPULATION_N + 2, 1} = 'AVG';
    STATS{POPULATION_N + 2, 3} = mean(cell2mat(STATS(1:POPULATION_N, 3)));
    STATS{POPULATION_N + 3, 1} = 'MAX';
    STATS{POPULATION_N + 3, 3} = max(cell2mat(STATS(1:POPULATION_N, 3)));

    % Compute P.Select, E. Count & A. Count
    % Se�ilen Yolun, Beklenen ve Ger�ek De�erlerin Hesaplanmas�
    for i = 1 : POPULATION_N
        fxi = STATS{i, 3}; % f(x)
        
        STATS{i, 4} = pselect(fxi); % P. Select / Se�ilen Yol
        STATS{i, 5} = ecount(fxi); % Expected Count / Beklenen Say�
        STATS{i, 6} = 0; % Actual Count / Ger�ek Say�
    end
    % Compute SUM, AVG & MAX
    % Toplam, Ortalama ve Maksimum Hesaplanmas�
    for i = 4 : 6
        STATS{POPULATION_N + 1, i} = sum(cell2mat(STATS(1:POPULATION_N, i)));
    end
    for i = 4 : 6
        STATS{POPULATION_N + 2, i} = mean(cell2mat(STATS(1:POPULATION_N, i)));
    end
    for i = 4 : 6
        STATS{POPULATION_N + 3, i} = max(cell2mat(STATS(1:POPULATION_N, i)));
    end
end
