males = [
    'Łukasz Wieczorek',
    'Piotr Rogulski',
]
females = [
    'Ania Kitowska',
]

choices = ['female'] * females.length + ['male'] * males.length
choices.shuffle!
people = males + females

people.size.times do |i|
    puts "#{people[i]}: #{choices[i]}"
end

