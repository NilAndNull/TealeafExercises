family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

close_members = []

close_members = family.select do |type, members|
  type == :sisters || type == :brothers
end

close_members = close_members.values.flatten

p close_members


