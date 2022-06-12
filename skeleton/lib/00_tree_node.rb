class PolyTreeNode

    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
        
    if self.parent != nil
        self.parent.children.delete(self)
    end

        @parent = new_parent
        
        # if self.parent != nil
        #     self.parent.children.delete(self)
    if new_parent.children != nil 
        new_parent.children << self
    end
        

    end

    def add_child(new_child)
        self.children << new_child
    end

    def remove_child
        raise "this is not a child" if child.parent != nil
        self.children.parent
    end

end