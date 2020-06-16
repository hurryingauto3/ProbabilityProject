function task5(steps, startx, starty)
    num = steps;
    sumx = startx;
    sumy = starty;
    
    plottx(1) = startx;
    plotty(1) = starty;
    
    
    %step_direction = randi([1,4],1,num)
    R_values = rand(num, 1);
    Theta_values = 2*pi.*rand(num,1);
    for i = 2:num
        if (sumx^2+sumy^2)^(1/2) > 100
            sumx = sumx + R_values(i)*cos(Theta_values(i)+pi);
            sumy = sumy + R_values(i)*sin(Theta_values(i)+pi);
        end
        sumx = sumx + R_values(i)*cos(Theta_values(i));
        sumy = sumy + R_values(i)*sin(Theta_values(i));

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
