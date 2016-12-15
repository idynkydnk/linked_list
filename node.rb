class Node
  attr_reader :value
  
  def initialize 
    @value = nil 
    @next_node = nil
  end

  def next_node= value
    @next_node = Node.new value
  end

end
