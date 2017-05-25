
def nyc_pigeon_organizer(pigeon_data)

pigeon_hash = Hash.new

  pigeon_data.each do |main_key, main_value|
    main_value.each do |metrics, pigeon_names|
      pigeon_names.each do |name|
        if pigeon_hash.key?(name)
            if pigeon_hash[name].include?(main_key)
                pigeon_hash[name][main_key] << metrics.to_s
              else
                pigeon_hash[name][main_key] = [metrics.to_s]
              end
            else pigeon_hash[name] = {main_key => [metrics.to_s]}
              end
            end
          end
        end
        pigeon_hash
      end








#pigeon_hash = Hash.new

  #pigeon_data.each do |main_key, main_value| #main_key is :colors, :gender, :lives
    #main_value.each do |metrics, pigeon_names| #metrics is white, "Subway", male...
      #pigeon_names.each {|name| pigeon_hash[name.to_sym] = {
        #main_key => [metrics]
      #}}


#if name exists
    #if name[main_value] exists
        #push value into name[main_value] // either with push or <<
    #else // meaning if the name exists but the main_value doesn't
        #create the hash name[main_value] => [value]
#else // meaning name doesn't exists - this would be the first time we reach this name
    #create hash for name and insert main_value => [value]
#end
