def average_word_length(input)
  words = input.split(' ')
  return if words.empty?
  words.join.length.to_f / words.length
end
