require_relative "node.rb"

class LinkedList

  def initialize
   @head = nil
   @tail = nil
   @count = 0
  end

  def append data
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next_node = node
      @tail = @tail.next_node
    end
    @count += 1
  end

  def to_s
    node = @head
    while node
      print "( " + node.value.to_s + " ) -> "
      if node.next_node
        node = node.next_node
      else
        puts "nil"
        node = nil
      end
    end
  end

  def prepend data 
    node = Node.new(data)
    node.next_node = @head
    @head = node
    @count += 1
  end

  def size
    @count
  end
   
  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at index
    node = @head
    index.times do
      node = node.next_node
    end
    node.value
  end

  def pop
    node = @head
    if node.next_node.nil?
      @head = nil
      @tail = nil
    else
      until node.next_node.next_node.nil?
        node = node.next_node
      end
      node.next_node = nil
      @tail = node
    end
    unless @count == 0
      @count -= 1
    end
   end

  def contains? value
    node = @head
    while node
      if node.value == value
        return true
      else
        node = node.next_node
      end
    end
    return false
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
