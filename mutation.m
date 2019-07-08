function population = mutation( children )
    global BEST_PATH
    
    p_mut1 = 0.065;
    p_mut2 = 0.024;
%     p_mut3 = 0.099; yani yol olasýlýðý
    
    % MUTATION 1
    % Rastgele 2 þehiri yer deðiþtir
    for i = 1 : length(children)
        child = children(i, :);
        len = length(child);
        for j = 1 : len
            if rand < p_mut1
                prev = child(j);
                index = randi(len);
                child(j) = child(index);
                child(index) = prev;
                children(i, :) = child;
            end
        end
    end
    
    % MUTATION 2
    %2 yolu birbiri ile deðiþtir
    for i = 1 : length(children)
        child = children(i, :);
        len = length(child);
        point = randi([2, len - 1]);
        if rand < p_mut2
            children(i, :) = [ child(point + 1:len) child(1:point) ];
        end
    end
    children(randi(length(children)), :) = BEST_PATH;
    population = children;
end