# Array mean extension method
class Array
  def mean
    reduce(:+).to_f / length
  end
end
