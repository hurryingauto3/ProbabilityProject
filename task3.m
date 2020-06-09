function task3(steps, startx, starty)
    num = steps;
    sumx = startx;
    sumy = starty;
    plottx(1) = startx;
    plotty(1) = starty;
    step_direction = randi([1,4],1,num);
    
    for i = 2:num
        if step_direction(i) == 1
            sumx = sumx - 1;
        elseif step_direction(i) == 2
            sumx = sumx + 1;
        elseif step_direction(i) == 3
            sumy = sumy - 1;
        else
            sumy = sumy + 1;
        end
        plottx(i) = sumx;
        plotty(i) = sumy;
    end
    
    figure (1);
    c = plot(plottx, plotty, '-rx');
    set(c, 'color', 'red');
    grid on;
    numm = num2str(num);
    str1 = 'person doing randomwalk in 2 dimension (n = ';
    str2 = ' steps)';
    result = [str1 numm str2];
    title(result);
end
