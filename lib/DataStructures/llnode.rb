class DataStructures::LinkedListNodeADT
  attr_accessor :value, :next_node

  def initialize value, next = nil
    @value = value
    @next_node = next
  end
end
