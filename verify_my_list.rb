# verify_my_list.rb
require_relative 'my_list'

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Should output: true
puts(list.all? { |e| e > 5 }) # Should output: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Should output: true
puts(list.any? { |e| e == 5 }) # Should output: false

# Test #filter
puts list.filter(&:even?) # Should output: [2, 4]
