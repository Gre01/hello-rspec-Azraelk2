# Array sort_by_length extension method
class Array
  def sort_by_length
    sort_by(&:length)
  end
end
