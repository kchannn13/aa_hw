class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        @neighbors << node
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]

        until queue.empty?
            node = queue.shift
            return node.value if node.value == target_value
            queue << node.neighbors
            end
        end
    end
end