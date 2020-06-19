function plottxy = task5helper(steps, startx, starty)
    num = steps;
    sumx = startx;
    sumy = starty;
    plottx(1) = startx;
    plotty(1) = starty;
    theta = 2*pi*rand(num,1);
    r = rand(num, 1);
    
    for i = 2:num
        sumx = sumx + r(i)*cos(theta(i));
        if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
            sumx = sumx - 2*(r(i)*cos(theta(i)));
        end
        sumy = sumy + r(i)*sin(theta(i));
        if ((sumx-startx)^2 + (sumy-starty)^2)^(1/2) > 100
            sumy = sumy - 2*(r(i)*sin(theta(i)));
        end
        plottx(i) = sumx;
        plotty(i) = sumy;
    end
    
%     figure (1);
%     c = plot(plottx, plotty, '-rx', 'Color', [rand, rand, ran]);
%     
%     grid on;
%     numm = num2str(num);
%     str1 = 'person doing randomwalk in 2 dimension (n = ';
%     str2 = ' steps)';
%     result = [str1 numm str2];
%     xlabel('x-axis');
%     ylabel('y-axis');
%     zlabel('time');
%     title(result);
%    
    plotxy = zeros(2, steps);
    plottxy(1, :) = plottx;
    plottxy(2, :) = plotty; 
    
end