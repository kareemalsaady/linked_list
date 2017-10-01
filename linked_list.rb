class Node
  	attr_accessor :value, :next

  	def initialize(value = nil)
    	@value = value
      @next = nil
  	end
  end

class LinkedList
    attr_accessor :head, :tail, :size
    def initialize
      @head = nil
      @tail = nil
      @size = 0
    end

    def append(value)
      node = Node.new(value)
      if @head == nil
        @head = node
        @tail = node
        @size += 1
      else
        @tail.next = node
        @tail = node
        @size +=1
      end
    end

    def prepend(value)
      node = Node.new(value)
      if @head == nil
        @head = node
        @tail = node
        @size += 1
      else
        node.next = @head
        @head = node
        @size += 1
      end
    end

    def size
      puts @size
    end

    def head
      puts @head.value
    end

    def tail
      puts @tail.value
    end

    def at(index)
      current_node = @head
      if index >= @size
        p "No node at given index"
      else
        index.times do
          current_node = current_node.next
        end
        p current_node.value
      end
    end

    def pop
      current_node = @head
      if @head == nil
        p "List is empty"
      else
        (@size-2).times do
          current_node = current_node.next
        end
        @tail = current_node
        @tail.next = nil
        @size -= 1
        return @tail.value
      end
    end

    def contains?(data)
     current_node = @head
     (@size - 1).times do
      return true if current_node.value == data
      current_node = current_node.next
      end
     return false
    end

    def find(data)
     current_node = @head
     node_number = 0
     (@size - 1).times do
      return node_number if current_node.value == data
      current_node = current_node.next
      node_number += 1
      end
     return nil
    end

    def to_s
     current_node = @head
     (@size).times do
      print "(#{current_node.value}) -->"
      current_node = current_node.next
      end
      print "nil \n"
    end

    

end

test = LinkedList.new
test.append(100)
test.append(200)
test.append(300)
test.append(400)
test.append(500)
test.insert_at(150,2)
#test.to_s
p test
