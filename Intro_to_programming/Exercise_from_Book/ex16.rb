contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

hash_key_array = [:email, :address, :phone]

contact_data.each do |arr|
  counter = 0
  if arr.any?(/Joe/i)
    loop do
      break if counter >= hash_key_array.length
      contacts["Joe Smith"][hash_key_array[counter]] = arr[counter]
      counter += 1
    end
  else
    loop do
      break if counter >= hash_key_array.length
      contacts["Sally Johnson"][hash_key_array[counter]] = arr[counter]
      counter += 1
    end
  end
end

p contacts
