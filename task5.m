function task5(steps, startx, starty)
    num = steps;
    sumx = startx;
    sumy = starty;
    
    plottx(1) = startx;
    plotty(1) = starty;
    
    
    %step_direction = randi([1,4],1,num)
    R_values = rand(num, 1);
    Theta_values = 2*pi.*rand(num,1);
    
    for i = 2:num
        if (sumx^2+sumy^2)^(1/2) > 100
            sumx = sumx + R_values(i)*cos(Theta_values(i)+pi);
            sumy = sumy + R_values(i)*sin(Theta_values(i)+pi);
        end
        sumx = sumx + R_values(i)*cos(Theta_values(i));
        sumy = sumy + R_values(i)*sin(Theta_values(i));
        
%         if step_direction(i) < prob_left
%             sumx = sumx - step_size(i);
%             sumr = sumr - (step_size(i));
%             sumtheta = sumtheta + tan(
%             if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
%                 sumx = sumx + 2*step_size(i);
%             end
%         elseif step_direction(i) < prob_left + prob_right
%             sumx = sumx + step_size(i);
%             if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
%                 sumx = sumx - 2*step_size(i);
%             end
%         elseif step_direction(i) < prob_left + prob_right + prob_down
%             sumy = sumy - step_size(i);
%             if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
%                 sumy = sumy + 2*step_size(i);d
%             end
%         else
%             sumy = sumy + step_size(i);
%             if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
%                 sumy = sumy - 2*step_size(i);
%             end
%         end
        
         plottx(i) = sumx;
         plotty(i) = sumy;
        

    end
    
    figure (1);
    c = plot3(plottx, plotty, 1:num, '-rx');
    set(c, 'color', 'red');
    grid on;
    numm = num2str(num);
    str1 = 'person doing randomwalk in 2 dimension (n = ';
    str2 = ' steps)';
    result = [str1 numm str2];
    xlabel('x-axis');
    ylabel('y-axis');
    zlabel('time');
    title(result);
end
