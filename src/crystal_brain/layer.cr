module RubyBrain
  class Layer
    # @input_weights : Array(Array(Float64))
    # @output_weights : Array(Array(Float64))

    property :input_weights, :output_weights
    getter :next_node_order_index, :nodes

    def initialize
      @nodes = [] of RubyBrain::Nodes::Neuron | RubyBrain::Nodes::ConstNode
      @next_node_order_index = 0
      @input_weights = [] of Array(Float64)
      @output_weights = [] of Array(Float64)
    end

    def append(node)
      node.order_index = @next_node_order_index
      node.left_side_weights = @input_weights
      node.right_side_weights = @output_weights
      @nodes << node
      @next_node_order_index += 1
    end

    def num_nodes
      @nodes.size
    end

    def each_node
      @nodes.each do |node|
        yield node
      end
    end

    def forward_outputs(inputs = [] of Float64)
      @nodes.map { |node| node.output_of_forward_calc(inputs) }
    end

    def backward_outputs(inputs)
      @nodes.map { |node| node.output_of_backward_calc(inputs) }.compact
    end
  end
end
