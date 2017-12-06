def caesar_encode(string,offset)
  alphabet = [*('a'..'z')]
  string.split("").collect do |character|
    
    if alphabet.include?(character.downcase) && character == character.upcase
       old_index = alphabet.index(character.downcase)
       new_index = (old_index + offset)%26
       character = alphabet[new_index].upcase
    elsif alphabet.include?(character.downcase) && character == character.downcase   
       old_index = alphabet.index(character.downcase)
       new_index = (old_index + offset)%26
       character = alphabet[new_index]
     else 
       character
       
    
    end 
    
  end.join("") 
  
end 

puts "What would you like to encode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_encode(user_string,user_offset)







