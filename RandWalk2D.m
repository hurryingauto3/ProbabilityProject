function plott = task3(num_tries, startx, starty, right_prob, left_prob)
    num = num_tries;
    sumx = startx;
    sumy = starty;
    
    plott(1) = startx;
    plott(2) = starty;
    
    stepx_direction = rand(num, 1);
    stepy_direction = rand(num, 1);
    
    for i = 2:num
        if stepx_direction(i) < left_prob
            sumx = sumx - 1;
        else    
            sumx = sumx + 1;
        end
            plott(i) = sumx;
    
        if stepy_direction(i) < left_prob
            sumx = sumy - 1;
        else    
            sumx = sumy + 1;
        end
            plott(i) = sumy;
    end
%     
    
    figure (1);
    c = plot3(1:num, stepy_direction, stepx_direction, 'k');
    set(c, 'color', 'blue');
    title('random walk in 1 dimension')
    ylabel('steps');

end


