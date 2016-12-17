require_relative "linkedlist.rb"

x = LinkedList.new
x.append 8
x.append 2
x.append 9
x.prepend 202020
x.append 434
x.prepend "yeah!"
x.append "wooooohhohoho"
x.to_s
puts "size is " + x.size.to_s
