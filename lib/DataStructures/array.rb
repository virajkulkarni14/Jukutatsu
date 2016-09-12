# Reimplementing Arrays using Enumerable
class DataStructures::ArrayADT
  include Enumerable

  def length
    @size
  end

  def initialize
    @size = 0
  end

  def <<(val)
    instance_variable_set("@a#{@size}".to_sym, val)
    @size += 1
  end

  def [](n)
    instance_variable_get("@a#{n}")
  end

  def each
    0.upto(@size - 1) { |n| yield self[n] }
  end
end
