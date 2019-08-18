def nyc_pigeon_organizer(info)
  
  array = []
  pigeon_hash = {}

  info.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        array << name if !array.include?(name)
      end
    end
  end
  
  array.each do |nombre|
    pigeon_hash[nombre] = Hash.new {|k, v| k[v] = []}
    info.each do |attribute, items|
      pigeon_hash[nombre][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == nombre
        end
      end
    end
  end
  
  return pigeon_hash
end
