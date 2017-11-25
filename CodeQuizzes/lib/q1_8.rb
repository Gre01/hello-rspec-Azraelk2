# String delete_last extension method
class String
  def delete_last(num)
    num.times { chop! }
    self
  end
end
