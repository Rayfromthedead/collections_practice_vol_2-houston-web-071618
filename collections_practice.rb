def begins_with_r(list)
 list.all? do |name|
name.start_with?("r")
end
  end

def contain_a(words)
  words.select {|ayy| ayy.include?("a")}
end

def first_wa(wah)
wah.find do |word| word.to_s.start_with?("wa")
end
end

def remove_non_strings(array)
  array.delete_if {|x| !(x.is_a? String)}
end

def count_elements(array)
  array.uniq.collect do |element| element[:count] = array.count(element)
     element
end
end

def merge_data(arg1, arg2)
  arg1.map do |element|
    element.merge(arg2[0][element[:first_name]].to_h)
end
end

def find_cool(arg)
  arg.select {|hash| hash[:temperature] == "cool" }
end

def organize_schools(arg1)
  locations = {}
arg1.values.each { |location| locations[location.values[0]] = [] }
arg1.each { |school, location| locations[location.values[0]] << school }
locations
end
