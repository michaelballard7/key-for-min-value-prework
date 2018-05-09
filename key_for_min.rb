# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash == {}
  small_value = 0
  name_hash.collect do |key, value|
    if small_value == 0 || small_value > value  
      small_value = value 
    end
  end 
  name_hash.key(small_value)
end