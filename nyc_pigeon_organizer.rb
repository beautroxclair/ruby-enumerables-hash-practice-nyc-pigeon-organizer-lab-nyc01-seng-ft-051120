def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (key, value)|
    puts memo 
    puts key 
    puts value
    puts "----"
    value.reduce({}) do |memo_1, (key_1, value_1)|
      if !memo[value_1]
        memo[value_1] = {:color => [], :gender => [], :lives => []}
        memo[value_1][value] = key_1.to_s
      else
        puts memo[value_1]
        memo[value_1][value] = key_1.to_s
      end
    end
  end
  memo
end
