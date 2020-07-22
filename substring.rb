dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def case_insensitive(obj)
    if obj.is_a?(Array)
        obj = obj.join(' ')
    end
    obj = obj.downcase.split(' ') 
    return obj
end

def substring(str, dictionary)
    new_str = case_insensitive(str)
    dictionary = case_insensitive(dictionary)
    new_hash = Hash.new

    dictionary.each do |key|
        count = 0
        
        new_str.each do |compare|
            if compare.include?(key)
                count += 1
            end
        end
        if count >= 1
         new_hash[key] = count
      
      end    
    end
    return new_hash
  end
 substring("hello, i am below you!", dictionary)