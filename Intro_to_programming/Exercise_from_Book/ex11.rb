contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |arr|
  if arr.any?(/Joe/i)
    contacts["Joe Smith"][:email] = arr[0]
    contacts["Joe Smith"][:address] = arr[1]
    contacts["Joe Smith"][:phone] = arr[2]
  else
    contacts["Sally Johnson"][:email] = arr[0]
    contacts["Sally Johnson"][:address] = arr[1]
    contacts["Sally Johnson"][:phone] = arr[2]
  end
end

p contacts
