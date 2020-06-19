function rw2d3nodes(steps, a_x, a_y, prob_nostep_a, prob_halfstep_a, prob_left_a, prob_right_a, prob_down_a, b_x, b_y, prob_nostep_b, prob_halfstep_b, prob_left_b, prob_right_b, prob_down_b, c_x, c_y, prob_nostep_c, prob_halfstep_c, prob_left_c, prob_right_c, prob_down_c)
    num = steps;
    sum_a_x = a_x;
    sum_a_y = a_y;
    sum_b_x = b_x;
    sum_b_y = b_y;
    sum_c_x = c_x;
    sum_c_y = c_y;
    plottx_a(1) = a_x;
    plotty_a(1) = a_y;
    plottx_b(1) = b_x;
    plotty_b(1) = b_y;
    plottx_c(1) = c_x;
    plotty_c(1) = c_y;

    %step_direction_a = randi([1,4],1,num);
    step_direction_a = rand(num, 1);
    step_size_a = rand(num, 1);
    step_a = 0;
    step_direction_b = rand(num, 1);
    step_size_b = rand(num, 1);
    step_b = 0;
    step_direction_c = rand(num, 1);
    step_size_c = rand(num, 1);
    step_c = 0;
    
    for i = 2:num
        if step_size_a(i) < prob_nostep_a
            step_a = 0;
        elseif step_size_a(i) < prob_nostep_a + prob_halfstep_a
            step_a = 0.5;
        else
            step_a = 1;
        end
        if step_direction_a(i) < prob_left_a
            sum_a_x = sum_a_x - step_a;
            if ((sum_a_x-a_x)^2 + (sum_a_y-a_y)^2)^(1/2) > 100
                sum_a_x = sum_a_x + 2*step_a;
            end
        elseif step_direction_a(i) < prob_left_a + prob_right_a
            sum_a_x = sum_a_x + step_a;
            if ((sum_a_x-a_x)^2 + (sum_a_y-a_y)^2)^(1/2) > 100
                sum_a_x = sum_a_x - 2*step_a;
            end
        elseif step_direction_a(i) < prob_left_a + prob_right_a + prob_down_a
            sum_a_y = sum_a_y - step_a;
            if ((sum_a_x-a_x)^2 + (sum_a_y-a_y)^2)^(1/2) > 100
                sum_a_y = sum_a_y + 2*step_a;
            end
        else
            sum_a_y = sum_a_y + step_a;
            if ((sum_a_x-a_x)^2 + (sum_a_y-a_y)^2)^(1/2) > 100
                sum_a_y = sum_a_y - 2*step_a;
            end
        end
        plottx_a(i) = sum_a_x;
        plotty_a(i) = sum_a_y;
        
        
        if step_size_b(i) < prob_nostep_b
            step_b = 0;
        elseif step_size_a(i) < prob_nostep_b + prob_halfstep_b
            step_b = 0.5;
        else
            step_b = 1;
        end
        if step_direction_b(i) < prob_left_b
            sum_b_x = sum_b_x - step_b;
            if ((sum_b_x-b_x)^2 + (sum_b_y-b_y)^2)^(1/2) > 100
                sum_b_x = sum_b_x + 2*step_b;
            end
        elseif step_direction_b(i) < prob_left_b + prob_right_b
            sum_b_x = sum_b_x + step_b;
            if ((sum_b_x-b_x)^2 + (sum_b_y-b_y)^2)^(1/2) > 100
                sum_b_x = sum_b_x - 2*step_b;
            end
        elseif step_direction_b(i) < prob_left_b + prob_right_b + prob_down_b
            sum_b_y = sum_b_y - step_b;
            if ((sum_b_x-b_x)^2 + (sum_b_y-b_y)^2)^(1/2) > 100
                sum_b_y = sum_b_y + 2*step_b;
            end
        else
            sum_b_y = sum_b_y + step_b;
            if ((sum_b_x-b_x)^2 + (sum_b_y-b_y)^2)^(1/2) > 100
                sum_b_y = sum_b_y - 2*step_b;
            end
        end
        plottx_b(i) = sum_b_x;
        plotty_b(i) = sum_b_y;
        
                
        
        if step_size_c(i) < prob_nostep_c
            step_c = 0;
        elseif step_size_c(i) < prob_nostep_c + prob_halfstep_c
            step_c = 0.5;
        else
            step_c = 1;
        end
        if step_direction_c(i) < prob_left_c
            sum_c_x = sum_c_x - step_c;
            if ((sum_c_x-c_x)^2 + (sum_c_y-c_y)^2)^(1/2) > 100
                sum_c_x = sum_c_x + 2*step_c;
            end
        elseif step_direction_c(i) < prob_left_c + prob_right_c
            sum_c_x = sum_c_x + step_c;
            if ((sum_c_x-c_x)^2 + (sum_c_y-c_y)^2)^(1/2) > 100
                sum_c_x = sum_c_x - 2*step_c;
            end
        elseif step_direction_c(i) < prob_left_c + prob_right_c + prob_down_c
            sum_c_y = sum_c_y - step_c;
            if ((sum_c_x-c_x)^2 + (sum_c_y-c_y)^2)^(1/2) > 100
                sum_c_y = sum_c_y + 2*step_c;
            end
        else
            sum_c_y = sum_c_y + step_c;
            if ((sum_c_x-c_x)^2 + (sum_c_y-c_y)^2)^(1/2) > 100
                sum_c_y = sum_c_y - 2*step_c;
            end
        end
        plottx_c(i) = sum_c_x;
        plotty_c(i) = sum_c_y;

    end
    
    figure (1);
    c = plot3(plottx_a, plotty_a, 1:num, '-rx');
    set(c, 'color', 'red');
    d = plot3(plottx_b, plotty_b, 1:num, '-rx');
    hold on;
    set(d, 'color', 'green');
    e = plot3(plottx_c, plotty_c, 1:num, '-rx');
    set(e, 'color', 'blue');
    numm = num2str(num);
    str1 = 'Discrete Random Walk in 2 dimension (n = ';
    str2 = ' steps)';
    result = [str1 numm str2];
    xlabel('x-axis');
    ylabel('y-axis');
    zlabel('time');
    title(result);
    hold off;
end
