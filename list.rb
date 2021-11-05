class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each do |li|
      block.call(li)
    end
  end
end

# verify solution
# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
list.all? { |e| e < 5 }
# true
list.all? { |e| e > 5 }
# false

# Test #any?
list.any? { |e| e == 2 }
# true
list.any? { |e| e == 5 }
# false

# Test #filter
list.filter(&:even?)
# [2, 4]
