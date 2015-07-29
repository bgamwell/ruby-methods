require 'prime'

def full_name(first, last)
  puts first + " " + last
end

full_name("Brennan", "Gamwell")

# Prints prime numbers up to 100
Prime.each(100) do |prime|
  p prime
end

# Attempting to check if a single number is a prime number
def is_prime?(num)
  if (num > 1 && num % 1 == 0 && num % num == 0)
  else
    puts "False. This isn't a prime number."
  end
end

is_prime?(100)

# Stack overflow solution to finding a prime number in Ruby
def is_prime?(n)
  ((2..(Math.sqrt(n)))).each do |i|
    return false if n % i == 0
  end
  return true
end

#From other students
def is_prime?(num)
	if num > 1 && num % 1 == 0 && num % num == 0
		(2...num).each do |n|
			if num % n == 0
				return false
			end
		end
		puts "#{num} is prime"
	end
end

# Enter a name and phone number as a key value pair, unless the record already exists

def get_contact
  contacts = {"Brennan" => "202-716-5145"}
  print "Enter a new first name. \n"
  first_name = gets.chomp
  print "Enter a new phone number. \n"
  phone_number = gets.chomp
  if contacts[first_name] != nil
    puts "This record already exists!"
  else
  contacts[first_name] = phone_number
  puts contacts
end
end

# Using Array#map, write a method called get_responses that takes an array of questions (strings) and returns an array of responses input from the console for each question. (Hint: you will need to use gets.chomp and puts ).

def get_responses(array_of_questions)
  array_of_answers = []
  array_of_questions.map{ |question|
    print question + "\n"
    array_of_answers.push(gets.chomp) }
    p array_of_answers
end

array_of_questions = ["How old are you?", "What is your favorite color?"]
