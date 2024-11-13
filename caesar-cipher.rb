def caesar_cipher(string, int)
  isUpper = string.split('').map do |letter|
        if (letter == letter.upcase)
          true
        else 
          false
        end
  end 
  array = string.downcase.split('')
  array_moved = []
  special_chars = ['.', ',', ':', ':', '?',' ', '!']
  alphabet = (10...36).map{ |i| i.to_s 36 }
  array.each_with_index do |letter, index|
    if (special_chars.include?(letter))
      array_moved.push(letter)
      next
    end
    index_moved = alphabet.index(letter)+5
    if (index_moved > 26) 
      index_moved -= 26
    end
    letter_moved = alphabet[index_moved]
    array_moved.push(letter_moved)
  end
  array_moved.each_with_index do |letter, index|
    if(isUpper[index] == true) 
      array_moved[index] = array_moved[index].upcase
    end
  end
  array_moved.join('')
  # Array#zip
  # Array#to_hash
  # Hash#each_value
  

end

p caesar_cipher("What a string!", 5)