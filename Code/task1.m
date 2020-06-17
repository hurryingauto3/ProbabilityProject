function sum = task1(num_tries, start)
    num = num_tries;
    sum = start;
    plott(1) = start;
    step_direction = randi([1,3],num,1);
    
    for i = 2:num
        if step_direction(i) == 1
            sum = sum + 1;
        elseif step_direction(i) == 2
            sum = sum - 1;
        else
            sum = sum + 0;
        end
        plott(i) = sum;
    end
    
%     figure (1);
%     c = plot(plott, 1:num, '-rx');
%     set(c, 'color', 'blue');
%     grid off;
%     title('Random Walk in 1 Dimension')
%     ylabel('steps');

end
