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
    node = @head
    index = 0
    while node
      if node.value == value
        return index 
      else
        node = node.next_node
        index += 1
      end
    end
    return nil 
  end

  def insert_at index, data
    node = @head
    new_node = Node.new(data)
    temp_index = 0
    if temp_index == index
      new_node.next_node = @head
      @head = new_node
    else
      until temp_index == (index - 1)
        node = node.next_node
        temp_index += 1
      end
      new_node.next_node = node.next_node
      node.next_node = new_node
    end
    @count += 1
  end
    
  def remove_at index
    node = @head
    temp_index = 0
    if temp_index == index
      @head = @head.next_node
    else
      until temp_index == (index - 1)
        node = node.next_node
        temp_index += 1
      end
      node.next_node = node.next_node.next_node   
      if node.next_node == nil
        @tail = node
      end
      @count -= 1
    end
  end
 end
