# Array has_string? extension method
class Array
  def has_string?
    any? { |w| w.is_a? String }
  end
end
