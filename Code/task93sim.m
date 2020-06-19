function task93sim(sim,sim_internal, steps,a_x, a_y, b_x, b_y, c_x, c_y)

    num = sim;
    mean_step_arr = zeros(1, num);
    for i = 1:num
        mean_step_arr(i) = task93(sim_internal, steps, a_x, a_y, b_x, b_y, c_x, c_y);
    end

    mean_mean = mean(mean_step_arr, 'all');
    figure(1);
    c = plot(1:num, mean_step_arr, 'r');

    euc_dist = ((a_x-b_x)^2+(a_y-b_y)^2)^(1/2);
    euc_dist = num2str(euc_dist);
    
    xlabel('Simulation Number');
    ylabel('Mean of Step at which 3 Particles are within 1 unit of distance');
    mean_mean = num2str(mean_mean);
    str1 = 'Expected Steps of Proximity When Starting from a Distance of ';
    str2 = ' with a deviation of ';
    result = [str1 euc_dist str2 mean_mean];
    title(result);

end
