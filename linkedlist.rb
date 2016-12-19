require_relative "node.rb"

class LinkedList

  def initialize
   @list = Node.new
   @i = 0
  end

  def prepend new_node_value
    x = Node.new
    x.value = new_node_value
    x.set_actual_next_node(@list)
    @list = x
  end

  def size
    i = 0
    if @list.value
      i += 1
    end
    size_recur @list, i
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

  def to_s
    print "( " + @list.value.to_s + " ) -> "
    to_s_recur(@list)
    puts "nil"
  end

  def head
    @list.value
  end

  def tail
    last_node(@list).value
  end

  def at index
    at_recur(@list, 0, index)
  end

  def pop
    if !@list.next_node
      @list.value = nil 
    elsif !@list.next_node.next_node
      @list.set_actual_next_node(nil)
    else
      pop_recur(@list.next_node)
    end
  end

  def contains? value
    if @list.value == value
      return true
    elsif @list.next_node
      contains_recur(@list.next_node, value)
    else
      return false
    end
  end

  def find value
    index = 0
    if @list.value == value
      return index 
    elsif @list.next_node
      index += 1
      find_recur(@list.next_node, index, value)
    else
      return nil
    end
  end
 
  
  private

  
  def find_recur list, index, value
    if list.value == value
      return index
    elsif list.next_node
      index += 1
      find_recur(list.next_node, index, value)
    else
      return nil
    end
  end

  def contains_recur list, value
    if list.value == value
      return true
    elsif list.next_node 
      contains_recur(list.next_node, value)
    else
      return false
    end
  end

  def pop_recur list
    if !list.next_node.next_node
      list.set_actual_next_node(nil)
    else
      pop_recur list.next_node
    end
  end

  def at_recur list, count, index
    if count == index
      return list.value
    else
      count += 1
      at_recur(list.next_node, count, index)
    end
  end

  def size_recur list, count
    if list.next_node
      count += 1
      size_recur list.next_node, count
    else
      return count
    end
  end

  def append_recur list, new_node_value
    if !list.next_node
      list.next_node = new_node_value
    else
      append_recur list.next_node, new_node_value
    end
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
