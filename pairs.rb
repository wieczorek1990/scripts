people = [
    'Łukasz',
    'Zuzia',
    'Jakub',
    'Monika',
    'Kamil',
    'Angelika',
    'Marcin',
    'Karolina',
    'Ania Z',
    'Anna Sz',
    'Krystyna',
    'Adrian'
]

def good(list_a, list_b)
    if list_a.length != list_b.length
        return false
    end
    list_a.length.times do |i|
        if list_a[i] == list_b[i]
            return false
        end
    end
    return true
end

choices = nil
loop do
    choices = people.shuffle
    if good(people, choices)
        break
    end
end

people.length.times do |i|
    puts "#{people[i]} - #{choices[i]}"
end
