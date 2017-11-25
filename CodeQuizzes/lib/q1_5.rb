def start_with_c?(input)
  input.split.all? { |w| w.start_with?('c') }
end
