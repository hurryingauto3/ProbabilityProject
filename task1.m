function plott = task1(num_tries, start, right_prob, left_prob)
    num = num_tries;
    sum = start;
    plott(1) = start;
    step_direction = rand(num, 1);
    
    for i = 2:num
        if step_direction(i) < left_prob
            sum = sum - 1;
        else
            sum = sum + 1;
        end
        plott(i) = sum;
    end
    
    figure (1);
    c = plot(plott, 1:num, '-rx');
    set(c, 'color', 'blue');
    grid on;
    title('random walk in 1 dimension')
    ylabel('steps');
end
