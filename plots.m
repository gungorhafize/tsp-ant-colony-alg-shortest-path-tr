function plots( )
    global CITIES_POSITION
    global BEST_PATH
    
    global PLOT
    global PLOT_SIZE
    global PLOT_TITLE
    global PATH_PLOT
        
    figure('Name', 'CITIES',...
        'Units', 'normalized',...
        'Position', [0 0 0.7 0.7]);

    subplot(2,1,1);
    
    PLOT = plot(CITIES_POSITION(1,:),...
        CITIES_POSITION(2,:),...
        'bo',...
        'MarkerFaceColor', 'b');
    
%     axis equal;
%     xlim([-0.1*PLOT_SIZE 1.1*PLOT_SIZE]);
%     ylim([-0.1*PLOT_SIZE 1.1*PLOT_SIZE]);
    
    t = {[ 'En Ýyi Yol: ' num2str(BEST_PATH)];...
             ['DISTANCE = ' num2str(distanceForPath(BEST_PATH))];...
             ['GENERATION ' num2str(1)]};
    PLOT_TITLE = title(t);
    hold on;
    
    PATH_PLOT = plot(...
        [CITIES_POSITION(1, BEST_PATH) CITIES_POSITION(1, BEST_PATH(1))],...
        [CITIES_POSITION(2, BEST_PATH) CITIES_POSITION(2, BEST_PATH(1))],...,...
        'r-');
end