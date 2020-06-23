function task7(steps, startx, starty, prob_nostep, prob_halfstep)
    num = steps;
    sumx = startx;
    sumy = starty;
    plottx(1) = startx;
    plotty(1) = starty;
    theta = 2*pi*rand(num,1);
    step_size = rand(num, 1);
    
    for i = 2:num
        if step_size(i) < prob_nostep
            r = 0;
        elseif step_size(i) < prob_nostep + prob_halfstep
            r = 0.5;
        else
            r = 1;
        end
        sumx = sumx + r*cos(theta(i));
        if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
            sumx = sumx - 2*(r*cos(theta(i)));
        end
        sumy = sumy + r*sin(theta(i));
        if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
            sumy = sumy - 2*(r*sin(theta(i)));
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
