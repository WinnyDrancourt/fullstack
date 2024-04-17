def is_multiple_of_3_or_5?(numbers)
     numbers%3 == 0 || numbers%5 == 0
end

def sum_of_3_or_5_multiples?(final_number)
    final_sum = 0
    (1..(final_number-1)).each do |current_number| 
        if is_multiple_of_3_or_5?(current_number)
            final_sum += current_number
        end
end
    return final_sum
end
