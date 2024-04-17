
day = [17, 3, 6, 9, 15, 8, 6, 1, 10]
def day_trader(day)
  positive_comparisons = []
  day.each_with_index do |val1, index1|
    day.each_with_index do |val2, index2|
      if index1 < index2 && val2-val1 > 0
        positive_comparisons << [val2-val1, index1, index2] #val2-val1 = profit, index1 = buying day, index2 = selling day
        end
      end
  end
   print positive_comparisons.sort
  if positive_comparisons.length == 0
    return "no possible profit"
  end
  return [positive_comparisons.sort[-1][1],positive_comparisons.sort[-1][2]]
end

day_trader(day)