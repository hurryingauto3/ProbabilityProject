function task2(steps, distance_apart, left_prob1, left_prob2, no_step_prob1, no_step_prob2)
    start1 = 0;
    start2 = 0 + distance_apart;
    sum1 = start1;
    sum2 = start2;
    num = steps;
    step_direction1 = rand(num, 1);
    step_direction2 = rand(num, 1);
    
    plott_1(1) = start1;
    plott_2(1) = start2;
    
    for i = 2:num
        if step_direction1(i) < no_step_prob1
            sum1 = sum1;
        elseif step_direction1(i) < no_step_prob1 + left_prob1
            sum1 = sum1 - 1;
        else
            sum1 = sum1 + 1;
        end
        plott_1(i) = sum1;
        
        if step_direction2(i) < no_step_prob2
            sum2 = sum2;
        elseif step_direction2(i) < no_step_prob2 + left_prob2
            sum2 = sum2 - 1;
        else
            sum2 = sum2 + 1;
        end
        plott_2(i) = sum2;
    end
    
    figure (1);
    c = plot(1:num, plott_1, '-rx');
    hold on;
    b = plot(1:num, plott_2, '-rx');
    set(c, 'color', 'red');
    set(b, 'color', 'blue');
    grid on;
    title('two people doing random walk in 1 dimension')
    xlabel('steps');
    hold off;
end
