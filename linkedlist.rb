require_relative "node.rb"

class LinkedList
  def initialize
   @list = Node.new
   i = 0
  end

  def append new_node_value
    @list.next_node = new_node_value 
  end

  def to_s
    puts @list[0].value
  end
end
