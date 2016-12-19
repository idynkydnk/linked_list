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
y.to_s
y.pop
y.to_s
puts "0... " + y.size.to_s
