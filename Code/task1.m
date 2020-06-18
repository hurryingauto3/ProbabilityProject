function plott = task1(steps, start, left_prob, no_step_prob)
    num = steps; %number of steps
    sum = start; %starting position of the person
    plott(1) = start; %the steps-position plot
    step_direction = rand(num, 1); %random number which decides his movement
    
    for i = 2:num
        if step_direction(i) < no_step_prob
            sum = sum;
        elseif step_direction(i) < no_step_prob + left_prob
            sum = sum - 1;
        else
            sum = sum + 1;
        end
        plott(i) = sum;
    end
    
%     figure (1);
%     c = plot(1:num, plott, '-rx');
%     set(c, 'color', 'blue');
%     grid on;
%     title('random walk in 1 dimension')
%     ylabel('steps');
end
