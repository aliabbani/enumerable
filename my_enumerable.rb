module MyEnumerable
  def all?
    each do |li|
      return false unless yield(li)
    end
    true
  end

  def any?
    each do |li|
      return true if yield(li)
    end
    false
  end

  def filter?
    arr = []
    each do |li|
      arr.push(li) if yield(li)
    end
    arr
  end
end
