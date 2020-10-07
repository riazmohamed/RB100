def take_block(name, &block)
  block.call(name)
end

name = "Adam"
take_block(name) do |n|
  puts "Hello #{n}!"
end
