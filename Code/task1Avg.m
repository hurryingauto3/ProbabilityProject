
function task1Avg()
    avgsum = 0;
    sdsum = 0;
    for i = 1:1000
    sums(i) = task1(100, 0);
    end
    
    for i = 1:1000
    avgsum = avgsum + sums(i);
    end
    
    avg = avgsum/1000;
    
    for i = 1:1000
    sdsum = sdsum + (sum(i)-avg)^2;
    end 
    
    sd = (sdsum/1000)^(1/2);
    
    figure (1);
    c = plot(1:1000, sums, '-r');
    title('Final distances of 1000 Random Walks');
    xlabel('Trials Number');
    ylabel('Final Distance');
    
    
    disp(avg);
    disp(sd);
    
    
end