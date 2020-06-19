function avg_step = task93(sim, steps, a_x, a_y, b_x, b_y, c_x, c_y)

    nums = sim;
    steps = steps;
    particles1 = zeros(2, steps, nums);
    particles2 = zeros(2, steps, nums);
    particles3 = zeros(2, steps, nums);

    for i = 1:nums
        particle1(:,:,i) = task58(steps, a_x, a_y);
        particle2(:,:,i) = task58(steps, b_x, b_y);
        particle3(:,:,i) = task58(steps, c_x, c_y);
    end

    step_arr = zeros(1, steps);
    % mean_step_arr = zeros(1, nums);
    

    for i = 1:nums
        for j = 1:steps
            if ((particle2(1,j,i)-particle1(1,j,i))^2 +(particle2(2,j,i)-particle1(2,j,i)^2))^(1/2) > 6 && ((particle2(1,j,i)-particle3(1,j,i))^2 +(particle2(2,j,i)-particle3(2,j,i)^2))^(1/2) > 6 && ((particle3(1,j,i)-particle1(1,j,i))^2 +(particle3(2,j,i)-particle1(2,j,i)^2))^(1/2) > 6  
                step_arr(i) = j;
            end
        end

    end
    

avg_step = mean(step_arr, 'all');

end
