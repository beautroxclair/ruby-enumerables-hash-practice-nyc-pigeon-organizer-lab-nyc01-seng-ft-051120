def nyc_pigeon_organizer(data)
  data.reduce({}) do |memo, (key, value)|
    value.reduce(nil) do |memo_1, (key_1, value_1)|
      if !memo[value_1]
        memo[value_1] => {:color => [], :gender => [], :lives => []}
        memo[value_1][value] = key_1.to_s
      else 
        memo[value_1][value] = key_1.to_s
      end
    end
  end
  memo
end
