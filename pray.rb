#!/usr/bin/env ruby
input = ARGV[0]

def self?(persons, persons2)
  count = persons.size - 1
  (0..count).each do |i|
    if persons[i] == persons2[i]
      return true
    end
  end
  return false
end

persons = []
File.readlines(input).each do |line|
  persons.push(line.chomp)
end
persons2 = persons.clone
while self?(persons, persons2)
  persons2.shuffle!
end

count = persons.size - 1
(0..count).each do |i|
  puts "#{persons[i]} — #{persons2[i]}"
end

