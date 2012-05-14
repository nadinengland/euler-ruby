#!/usr/bin/env ruby
Dir["../helpers/*.rb"].each { |file| require file }

puts 'Executing Euler Solutions by Thomas Nadin (nadinengland@gmail.com)'

# Handy little method to execute a ruby script with arguments
def eval_script filename, arguments
  proc = Proc.new {}
  eval(File.read(filename), proc.binding, filename)
end

Dir["../solution/*.rb"].each do |s|
  puts "#{s}: #{eval_script(s, nil)}"
end