require_relative 'LinkedListNodeADT'
class DataStructures::SinglyLinkedListADT
  LLNode = DataStructures::LinkedListNodeADT.new(:value, :next)
  attr_accessor :head

  def initialize self
    self.head = LLNode.new(nil, nil)
  end

  def length

  end

  def appendToTail

  end

  def insertNode

  end

  def deleteNode

  end
end
