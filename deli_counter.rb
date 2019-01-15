# Write your code here.
katz_deli = []

def line(people_in_line)
    place = people_in_line.count
    if place > 0
        people_and_places = []
        place_counter = 1
        people_in_line.each do |person|
            person_and_place = "#{place_counter}. #{person}"
            people_and_places.push(person_and_place)
            place_counter += 1
        end
        deli_line = people_and_places.join(" ")
        puts "The line is currently: #{deli_line}"
    elsif place == 0
        puts "The line is currently empty."
    else
        puts "Input must be greater than 1."
    end
end

def take_a_number(current_line, name)
    number = current_line.count + 1
    puts "Welcome, #{name}. You are number #{number} in line."
    current_line.push(name)
end

def now_serving(katz_deli)
    people_in_line = katz_deli.count
    if people_in_line == 0
        puts "There is nobody waiting to be served!"
    else
        next_customer = katz_deli.shift
        puts "Currently serving #{next_customer}."
    end
end