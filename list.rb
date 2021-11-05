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
