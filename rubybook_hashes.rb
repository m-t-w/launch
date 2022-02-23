family = {  uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
  }

fam_arr = []
family.select { |k,v| fam_arr << v if (k.to_s == "sisters" || k.to_s == "brothers") }
p fam_arr.flatten!

immediate_family = family.select { |k, v| k == :sisters || k == :brothers }
arr = immediate_family.values.flatten
p arr
print "\n"

extended_fam = {:uncles=>["bob", "joe", "steve"], :aunts=>["mary", "sally", "susan"]}
immediate_fam = {:sisters=>["jane", "jill", "beth"], :brothers=>["frank", "rob", "david"]}
family = immediate_fam
puts "family hashes"
puts extended_fam
puts immediate_fam
print "\n"
family.merge!(extended_fam)
puts "the whole family"
puts family
print "\n"
puts "just the extended familly"
extended_fam.merge(immediate_fam)
puts extended_fam

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person.fetch(:name)


