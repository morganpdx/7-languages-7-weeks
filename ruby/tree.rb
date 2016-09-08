#!/usr/bin/ruby

class Tree
	attr_accessor :children, :node_name

	def initialize(name, children=[])
		@children = children
		@node_name = name
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end





class SuperTree
	attr_accessor :children, :node_name

	def initialize(tree)
		if !tree.empty?
			@node_name = tree.keys.first
			@children = []
			tree[@node_name].each do |k, v|
				@children.push(SuperTree.new({k=>v}))
			end
		end
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end





ruby_tree = Tree.new("Ruby", 
	[Tree.new("Reia"), Tree.new("MacRuby")])

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

puts "And now for the SuperTree"

super_tree = SuperTree.new({"grandpa" => {"dad" => {"child1" => {}, "child2" => {}}, "uncle" => {"child3" => {}, "child4" => {}}}})

puts "Visiting a node"
super_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
super_tree.visit_all {|node| puts node.node_name}