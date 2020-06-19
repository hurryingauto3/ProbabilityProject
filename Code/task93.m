function avg_step = task93(sim, steps, a_x, a_y, b_x, b_y, c_x, c_y)

    nums = sim;
    steps = steps;
    particles1 = zeros(2, steps, nums);
    particles2 = zeros(2, steps, nums);
    particles3 = zeros(2, steps, nums);

    for i = 1:nums
        particle1(:,:,i) = task5helper(steps, a_x, a_y);
        particle2(:,:,i) = task5helper(steps, b_x, b_y);
        particle3(:,:,i) = task5helper(steps, c_x, c_y);
    end

    step_arr = zeros(1, steps);
    % mean_step_arr = zeros(1, nums);
    

    for i = 1:nums
        for j = 1:steps
            a = [particle1(1,j,i), particle1(2,j,i)];
            b = [particle2(1,j,i), particle2(2,j,i)];
            c = [particle3(1,j,i), particle3(1,j,i)];
            if norm(a-b) <= 6 && norm(a-c) <=6 && norm(c-b) <=6
                step_arr(i) = j;
            end
        end

    end
    

avg_step = mean(step_arr, 'all');

end
