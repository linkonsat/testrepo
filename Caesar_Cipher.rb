require 'pry-byebug'
puts "Enter a string to be encrypted"
encrypted_string = gets.chomp 
puts "Enter a number for how you want it shifted"
character_shift = gets.chomp

def shift_detector (encrypted_string, character_shift)

    if (character_shift.to_i == 0 ) 
    puts "No shift detected. Enter a number higher than 0 to encrypt" 
    else
    caesar_shift(encrypted_string, character_shift.to_i)
    end
end
def large_shift_adjustor (min_range,ascii_shift, current_ascii)

end
def caesar_shift(encrypted_string, character_shift)
split = encrypted_string.split('')

split.each do |string|
     # binding.pry
    string_ascii = string.ord
    base = character_shift < 0 ? -26 : 26
     
        if ((65..90).include?(string_ascii))
            shift_adjust = string_ascii - 65
            large_shift = (character_shift + shift_adjust) %  base
        range_end_shift = large_shift < 0 ? 90 + large_shift : 65 + large_shift
        string.replace(range_end_shift.chr)  
           
        elsif((97..122).include?(string_ascii))
            
            shift_adjust = string_ascii - 97
            large_shift = (character_shift + shift_adjust) % base
         range_end_shift = large_shift < 0 ?  122 + large_shift : 97 + large_shift
        string.replace(range_end_shift.chr)  
        end
    end



puts split.join('')
end

shift_detector(encrypted_string, character_shift)
