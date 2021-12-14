dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)  ## first word argument second array

    string.downcase! ##case insensative
    
    split_string = string.split(' ') ##split the string into words

    substring_occurence_array = []
    
    split_string.map{|string_word| 
        array.map {|dictionary_word| 
            if  string_word.include? dictionary_word
                substring_occurence_array << dictionary_word
            end
        }    
    }
    substring_occurence_array.reduce(Hash.new(0)) { |word, occurence|  ##return a hash with occurence count
        word[occurence] += 1
        word
    } 
    
end


p substrings("Howdy partner, sit down! How's it going", dictionary)