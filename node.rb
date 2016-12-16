class Node
  attr_accessor :value, :next_node
  
  def initialize 
    @value = nil 
    @next_node = nil
  end

  def next_node= value
    x = Node.new
    @next_node = x 
    @next_node.value = value
  end

end
