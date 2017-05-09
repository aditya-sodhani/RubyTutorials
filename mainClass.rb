require '/Users/IT0011_Aditya_Sodhani/Desktop/Ruby Practice/RubyTutorials/LinkedLists/linkedList'
require '/Users/IT0011_Aditya_Sodhani/Desktop/Ruby Practice/RubyTutorials/LinkedLists/node'


node1 = Node.new(10);
node2 = Node.new(50);

list = LinkedList.new;
list.append(Node.new(1));
list.append(Node.new(2));
list.append(Node.new(3));
list.append(Node.new(4));
list.append(Node.new(5));
list.append(Node.new(6));
list.prepend(Node.new(0));
list.append(Node.new(7));
list.to_s;
list.at(3);
list.pop;
