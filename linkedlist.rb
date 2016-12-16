require_relative "node.rb"

class LinkedList
  def initialize
   @list = Node.new
   @i = 0
  end

  def append new_node_value
    if !@list.value
      @list.value = new_node_value
    else
      if !@list.next_node
        @list.next_node = new_node_value
      else
        last_node(@list.next_node).next_node = new_node_value
      end
    end
  end
  
  def append_recur list, new_node_value
    if !list.next_node
      list.next_node = new_node_value
    else
      append_recur list.next_node, new_node_value
    end
  end

  def to_s
    print "( " + @list.value.to_s + " ) -> "
    to_s_recur(@list)
    puts "nil"
  end

  def to_s_recur list
    if list.next_node
      print "( " + list.next_node.value.to_s + " ) -> "
    else
      return
    end
    to_s_recur(list.next_node)
  end
  def last_node list
    if !list.next_node
      return list
    else
      last_node list.next_node
    end
  end
end
