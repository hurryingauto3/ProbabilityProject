
function task1Avg()
    avgsum = 0;
    sdsum = 0;
    for i = 1:1000
    sums(i) = task1(10000, 0);
    end
    
    for i = 1:1000
    avgsum = avgsum + sums(i);
    end
    
    avg = avgsum/1000;
    
    for i = 1:1000
    sdsum = sdsum + (sum(i)-avg)^2;
    end 
    
    sd = (sdsum/1000)^(1/2);
    
    plot(1:1000, sums,'-rx')
    
    disp(avg);
    disp(sd);
    
    
end