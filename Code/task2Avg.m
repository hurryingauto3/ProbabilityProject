function avgmeeting_step = task2Avg(start_1, distance, steps, left_prob, no_step_prob, simulations)
    avgplott_1(1) = start_1;
    avgplott_2(1) = start_1 + distance;
    all_simulations_1 = zeros(simulations, steps);
    all_simulations_2 = zeros(simulations, steps);
    for i = 1:simulations
        all_simulations_1(i,:) = task1(steps, start_1, left_prob, no_step_prob);
        all_simulations_2(i,:) = task1(steps, start_1 + distance, left_prob, no_step_prob);
    end
    
    for j = 2:steps
        sum_1 = 0;
        sum_2 = 0;
        for i = 1:simulations
            sum_1 = sum_1 + all_simulations_1(i, j);
            sum_2 = sum_2 + all_simulations_2(i, j);
        end
        avgplott_1(j) = sum_1/simulations;
        avgplott_2(j) = sum_2/simulations;
    end
    
    avgmeeting_plott = zeros(1,simulations);
    for i = 1:simulations
        avgmeeting_plott(1, i) = -1;
        for j = 1:steps
            if all_simulations_2(i, j) - all_simulations_1(i, j) <= 0
                avgmeeting_plott(1, i) = j;
                break
            end
        end
    end
    
    sum_meeting_step = 0;
    for i = 1:simulations
        sum_meeting_step = sum_meeting_step + avgmeeting_plott(1, i);
    end
    avgmeeting_step = sum_meeting_step/simulations;
    figure (1);
    c = plot(1:steps, avgplott_1, '-rx');
    hold on;
    b = plot(1:steps, avgplott_2, '-rx');
    set(c, 'color', 'red');
    set(b, 'color', 'blue');
    grid on;
    title('two people doing random walk in 1 dimension')
    xlabel('steps');
    hold off;
end
