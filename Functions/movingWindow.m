function avg_val = movingWindow(error,avg_val,window)

    if (error > (avg_val+window)) || (error < (avg_val-window))
        avg_val = error;
    end
 
end