require_relative "linkedlist.rb"

x = LinkedList.new
x.append 8
x.append 2
x.append 9
x.prepend 43
x.append 29
x.append 23
x.prepend 1
x.append "heeellllooooo"
x.to_s
puts x.size
puts "Size should be 8"
