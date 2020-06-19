function avg_step = task93(sim, steps, a_x, a_y, b_x, b_y, c_x, c_y, d_x, d_y)

    nums = sim;
    steps = steps;
    particles1 = zeros(2, steps, nums);
    particles2 = zeros(2, steps, nums);
    particles3 = zeros(2, steps, nums);
    particles4 = zeros(2, steps, nums);

    for i = 1:nums
        particle1(:,:,i) = task58(steps, a_x, a_y);
        particle2(:,:,i) = task58(steps, b_x, b_y);
        particle3(:,:,i) = task58(steps, c_x, c_y);
        particle4(:,:,i) = task58(steps, d_x, d_y);
    end

    step_arr = zeros(1, steps);
    % mean_step_arr = zeros(1, nums);
    

    for i = 1:nums
        for j = 1:steps
            a = [particles1(1,j,i), particles1(2,j,i)];
            b = [particles2(1,j,i), particles2(2,j,i)];
            c = [particles3(1,j,i), particles3(1,j,i)];
            d = [particles4(1,j,i), particles4(1,j,i)];

            if norm(a-b) <= 6 && norm(a-c) <=6 && norm(a-d) <=6 && norm(b-c) <=6 && norm(b-d) <= 6 && norm(c-d) <=6
            
                step_arr(i) = j;
            
            end
        end
    end
    

avg_step = mean(step_arr, 'all');   

end
