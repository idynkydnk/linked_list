require_relative "linkedlist.rb"

x = LinkedList.new
x.append(2)
x.append(3)
x.prepend(1)
x.to_s
puts "Size is " + x.size.to_s
x.append(23)
x.append(84)
x.append(21)
x.prepend(42)
x.to_s
puts "Size is " + x.size.to_s
puts "Head should be 42... " + x.head.to_s
puts "Tail should be 21... " + x.tail.to_s
puts "Index at 0 should be 42... " + x.at(0).to_s
puts "Index at 1 should be 1... " + x.at(1).to_s
puts "Index at 4 should be 23... " + x.at(4).to_s
x.pop
x.to_s
puts x.contains?(21).to_s
puts x.contains?(1).to_s
puts x.find(23).to_s
puts x.find(323233).to_s

y = LinkedList.new
y.append(1)
y.append(2)
y.append(3)
y.insert_at(0, 8)
y.insert_at(1, 6)
y.insert_at(4, 2323)
y.pop
y.pop
y.to_s
puts "size is " + y.size.to_s
puts y.head.to_s
puts y.tail.to_s
y.remove_at(3)
y.to_s
puts y.head.to_s
puts y.tail.to_s

