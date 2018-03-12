# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash != NIL
    smallest_key , smallest_value = name_hash.first
    name_hash.collect do |key,value|
      if value < smallest_value 
        smallest_value = value
        smallest_key = key
      end
    end
    return smallest_key
  else
    NIL
  end
end