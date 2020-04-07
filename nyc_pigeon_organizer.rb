def nyc_pigeon_organizer(data)

  names = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end

  names.each do |element|
    pigeon_hash[element] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[element][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == element
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
