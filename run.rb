require_relative "linkedlist.rb"

x = LinkedList.new
x.append 8
x.append 2
x.prepend 84
x.append 9
x.append 434
x.to_s
puts "84... " + x.head.to_s
puts "434... " + x.tail.to_s
puts "84... " + x.at(0).to_s
puts "2... " + x.at(2).to_s
puts "5... " + x.size.to_s

y = LinkedList.new
y.to_s
y.append 4
y.append 2
y.append 1
y.prepend 8
y.prepend 7
y.to_s
y.pop
y.to_s
y.pop
y.to_s
puts y.contains?(7).to_s
puts y.contains?(34).to_s
puts y.contains?(1).to_s
puts y.find(7).to_s
puts y.find(34).to_s
puts y.find(8).to_s
puts y.find(4).to_s
