require_relative './node'

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        if head.nil?
            self.head = node
        return
        else
           node_minus_one = nil
           node_minus_one.next_node = head
           node_minus_one = node
        end
    end

    def append(node)
        if head.nil?
            self.head = node
        return
        end

        last_node = head
        while last_node.next_node
            last_node = last_node.next_node
        end
        last_node.next_node= node
    end

    def delete_head
        if head.nil?
            return
        else
            self.head = self.head.next_node
        end 
    end

    def delete_tail
        if head.nil?
            return
        elsif head.next_node.nil?
            return delete_head
        else
         node = head
         node_minus_one = nil
          while node.next_node
            node_minus_one= node
            node = node.next_node
          end
          node_minus_one.next_node= nil
        end 
    end

    def add_after(index, node)
        if head.nil?
            self.head=node 
        return
        end

        i = 0
        last_node = head
        unless i > index
            last_node = last_node.next_node
            i +=1
        end
            last_node.next_node = node
    end

    def search(value)   
        last_node = head 
        last_node = last_node.next_node
        if last_node.data == value
            last_node
        end
    end     



end
