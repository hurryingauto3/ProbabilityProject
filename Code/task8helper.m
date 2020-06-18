num = 100;
mean_step_arr = zeros(1, num);
for i = 1:num
    mean_step_arr(i) = task8();
end

disp(mean(mean_step_arr, 'all'))

figure(1);
c = plot(1:num, mean_step_arr, 'r');
title('Mean Steps of two particles within 1 unit of distance when starting from a distance of 10');
xlabel('Simulation Number');
ylabel('Mean of Step at which 2 Particles are within 1 unit of distance');