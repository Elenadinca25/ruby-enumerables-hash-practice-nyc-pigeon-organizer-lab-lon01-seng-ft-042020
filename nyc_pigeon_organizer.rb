def nyc_pigeon_organizer(data)
  data.each do |key, value|
    p key
    if value.is_a?(Hash)
      value.each do |k, v|
        p k
        p v
      end
    else
      p value
    end
  end
  # write your code here!
