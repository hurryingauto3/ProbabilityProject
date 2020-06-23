function avgstep = task1Avg(start, steps, left_prob, no_step_prob, simulations, step_needed)
    avgplott(1) = start;
    all_simulations = zeros(simulations, steps);
    for i = 1:simulations
        all_simulations(i,:) = task1(steps, start, left_prob, no_step_prob);
    end
    
    for j = 2:steps
        sum = 0;
        for i = 1:simulations
            sum = sum + all_simulations(i, j);
        end
        avgplott(j) = sum/simulations;
    end
    avgstep = avgplott(step_needed);
    
    figure (1);
    c = plot(1:steps, avgplott, '-rx');
    set(c, 'color', 'blue');
    grid on;
    title('avg random walk in 1 dimension')
    ylabel('steps');
end
