def vowels(input)
  input.split.select { |word| word =~ /[aeiou]/ }
end
