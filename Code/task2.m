function task2(steps, distance_apart)
    start1 = 0;
    start2 = 0 + distance_apart;
    sum1 = start1;
    sum2 = start2;
    num = steps;
    step_direction1 = randi([1,3],num,1);
    step_direction2 = randi([1,3],num,1);
    
    plott_1(1) = start1;
    plott_2(1) = start2;
    
    for i = 2:num
        if step_direction1(i) == 1
            sum1 = sum1 + 1;
        elseif step_direction1(i) == 2
            sum1 = sum1 - 1;
        else
            sum1 = sum1 + 0;
        end
        
        if step_direction2(i) == 1
            sum2 = sum2 + 1;
        elseif step_direction2(i) == 2
            sum2 = sum2 - 1;
        else
            sum2 = sum2 + 0;
        end
        
        plott_1(i) = sum1;
        plott_2(i) = sum2;
    end
    
    figure (1);
    c = plot(plott_1, 1:num, '-rx');
    hold on;
    b = plot( plott_2, 1:num, '-rx');
    set(c, 'color', 'red');
    set(b, 'color', 'blue');
    grid on;
    title('Random Walk in 1 Dimension of Two Particles')
    ylabel('steps');
    xlabel('Distance')
    hold off;
end
