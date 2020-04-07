def nyc_pigeon_organizer(data)

  my_array = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |attribute, arr|
      arr.each do |name|
        my_array << name if !my_array.include?(name)
      end
    end
  end

  my_array.each do |element|
    pigeon_hash[element] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[element][attribute]
      items.each do |attribute, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << attribute.to_s if name == element
        end
      end
    end
  end

  pigeon_hash

end



=begin
new_hash = {}
data.each do |property, hash|
  hash.each do |attribute, array|
    array.each do |name|
      if !new_hash.has_key?(name)
        new_hash[name] = {}
      end

      if !new_hash[name].has_key?(property)
        new_hash[name][property] = []
      end

      if !new_hash[name][property].include?(attribute)
        new_hash[name][property] << attribute.to_s
      end
    end
  end
end
new_hash
end
=end
