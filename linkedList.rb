# Fibonacci Series

class LinkedList


	attr_accessor :size, :head, :tail

	def initialize
	    @head = nil
	    @tail = nil
	    @size = 0
	end

	def append(node)
			if (@size == 0)
				@head = node
				@tail = node
				@size += 1
			elsif (@size > 0)
				@tail.next_node = node
				@tail = node
				@size += 1
			end
	end

	def prepend(node)
			if (@size == 0)
				@head = node
				@tail = node
				@size += 1
			else
				node.next_node = @head
				@head = node
				@size += 1
			end
	end

	def to_s
		outputStr = "";
		
		i = 0
		node = @head
		while i < @size  do
			outputStr = outputStr + "( "+ node.value.to_s + " ) -> ";
		    i +=1
		    node = node.next_node
		end

		outputStr = outputStr + "nil"
		puts outputStr;

	end

	def at(index)

		counter = index;
		tempNode = @head;
		while counter > 0  do
			outputVal = tempNode.value
			counter = counter - 1;
			tempNode = tempNode.next_node

		end		

		puts outputVal.to_s;
	end

	def pop

		counter = @size;
		tempNode = @head;
		while counter - 1 > 0  do
			tempNode = tempNode.next_node;
			counter = counter - 1;
		end		
		tempNode.next_node = nil
		@size = @size - 1;
	
	end

	def contains? (varCheck)

		result = false;
		list.each do |listVar|
			if (listVar.value == varCheck)
				result = true;
			end
		end

		return result;

	end

	def find(data)
		
		result = nil;
		count = 0;
		list.each do |listVar|
			if (listVar.value == varCheck)
				result = count;
			end
			count = count+1;
		end

		return result;

	end

	

end