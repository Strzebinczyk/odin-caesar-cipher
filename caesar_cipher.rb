def caesar_cipher(string, _int)
  is_upper = string.split('').map do |letter|
    letter == letter.upcase
  end
  array = string.downcase.split('')
  array_moved = []
  special_chars = ['.', ',', ':', ':', '?', ' ', '!']
  alphabet = (10...36).map { |i| i.to_s 36 }
  array.each_with_index do |letter, _index|
    if special_chars.include?(letter)
      array_moved.push(letter)
      next
    end
    index_moved = alphabet.index(letter) + 5
    index_moved -= 26 if index_moved > 26
    letter_moved = alphabet[index_moved]
    array_moved.push(letter_moved)
  end
  array_moved.each_with_index do |_letter, index|
    array_moved[index] = array_moved[index].upcase if is_upper[index] == true
  end
  array_moved.join('')
end

p caesar_cipher('What a string!', 5)
