
function avg_step = task8

    nums = 100;
    steps = 1000;
    particles1 = zeros(2, steps, nums);
    particles2 = zeros(2, steps, nums);

    for i = 1:nums
        particle1(:,:,i) = task58(steps, 0, 0);
        particle2(:,:,i) = task58(steps, 10, 10);
    end

    step_arr = zeros(1, steps);
    % mean_step_arr = zeros(1, nums);
    

    for i = 1:nums
        for j = 1:steps
            if ((particle2(1,j,i)-particle1(1,j,i))^2 +(particle2(2,j,i)-particle1(2,j,i)^2))^(1/2) <= 1
                step_arr(i) = j;
            end
        end

    end
    

avg_step = mean(step_arr, 'all');

end



    