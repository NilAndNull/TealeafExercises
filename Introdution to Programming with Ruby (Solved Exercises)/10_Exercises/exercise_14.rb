contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def convert_array(array)
  hash = {}

  hash[:email] = array[0]
  hash[:address] = array[1]
  hash[:phone] = array[2]

  return hash
end


i = 0
contacts.each_key do |key|
  contacts[key] = convert_array(contact_data[i])
  i += 1
end

p contacts


