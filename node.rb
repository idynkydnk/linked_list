class Node
  attr_accessor :value, :next_node
  
  def initialize 
    @value = nil 
    @next_node = nil
  end

  def next_node node 
    @next_node = node 
  end

end
