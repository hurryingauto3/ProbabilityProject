function task5(steps, startx, starty, prob_nostep, prob_halfstep, prob_left, prob_right, prob_down)
    num = steps;
    sumx = startx;
    sumy = starty;
    plottx(1) = startx;
    plotty(1) = starty;
    %step_direction = randi([1,4],1,num);
    step_direction = rand(num, 1);
    step_size = rand(num, 1);
    step = 0;
    
    for i = 2:num
        if step_size(i) < prob_nostep
            step = 0;
        elseif step_size(i) < prob_nostep + prob_halfstep
            step = 0.5;
        else
            step = 1;
        end
        if step_direction(i) < prob_left
            sumx = sumx - step;
            if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
                sumx = sumx + 2*step;
            end
        elseif step_direction(i) < prob_left + prob_right
            sumx = sumx + step;
            if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
                sumx = sumx - 2*step;
            end
        elseif step_direction(i) < prob_left + prob_right + prob_down
            sumy = sumy - step;
            if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
                sumy = sumy + 2*step;
            end
        else
            sumy = sumy + step;
            if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
                sumy = sumy - 2*step;
            end
        end
        plottx(i) = sumx;
        plotty(i) = sumy;
    end
    
    figure (1);
    c = plot3(plottx, plotty, 1:num, '-rx');
    set(c, 'color', 'red');
    grid on;
    numm = num2str(num);
    str1 = 'person doing randomwalk in 2 dimension (n = ';
    str2 = ' steps)';
    result = [str1 numm str2];
    xlabel('x-axis');
    ylabel('y-axis');
    zlabel('time');
    title(result);
end
