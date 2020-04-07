def nyc_pigeon_organizer(data)
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

piogen_list = {}
data.each do |key, value|
  value.each do |describe, array|
    array.each do |name|
      if piogen_list.has_key?(name)
        if piogen_list[name].has_key?(key)
          piogen_list[name][key] << describe.to.s
        else
            pigeon_list[name][key] = [describe.to_s]
          end
          
          else
          piogen_list[name] = {key => [describe.to_s]}
        end
      end
    end
  end
  piogen_list
end
