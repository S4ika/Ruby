#puts "Hello, " + ARGV[0]
#ARGV.clear
#Task 3

#print "Какой любимый язык? "
#lang = gets.chomp
#case lang
#	when "Ruby"
#		puts "Подлиза"
#	when "C++"
#		puts "Бедолага"
#	when "C#"
#		puts "Ну Ruby, так Ruby"
#	when "Python"
#		puts "Это как Ruby, только хуже"
#	else
#		puts "Хороший выбор - Ruby! А твой выбор плох =)"
#	end


#puts("Кручу-верчу, обмануть хочу! Угадай в каком из 5 стаканов вода")
#num = gets.to_i
#if num <= 6
#	puts("В этот раз не повезло(\nЕще попытка 100 у.е.")
#else 
#	puts("Так всего 5 стаканов, куда такой номер?")
#end
#unless num > 5
#	puts("В этот раз не повезло(\nЕще попытка 100 у.е.")
#end
#Task 4
puts "Input Ruby command..."
cmd = gets.chomp
puts "Result your command :\n"
eval(cmd)

puts "Input OS command..."
cmd_os = gets.chomp
puts "Result your command :\n"
exec(cmd_os)

#Task 2
#1.
num = ARGV[0].to_i
# sum_digits = 0
# while num !=0
	# sum_digits += num % 10
	# num /= 10
# end
# puts sum_digits
#2.

def sum_digits(number)
	sum = 0
	while number != 0
		sum += number%10
		number /= 10
	end
	sum
end

def mult_digits(number)
	res = 1
	while number != 0
		res *= number%10
		number /= 10
	end
	res
end

def find_max(number)
	max = number%10
	number /= 10
	while number != 0
		check = number % 10
		if check > max max = check
		number /= 10
	end
	max
end


def find_min(number)
	min_el = number % 10
	number /= 10
	while number != 0
		if min_el > number % 10
			min_el = number % 10
		end
		number /= 10
	end
	min_el
end

def alg_Ev(a,b)
	while a != 0 and b!= 0
		if a > b
			a %= b
		else
			b %= a
		end
	end
	a+b
end

def count_prime_digits(num)
	count = 0
	iter = 1
	until iter >= num
		if alg_Ev(iter,num) == 1
			count+=1
		end
		iter+=1
	end
	count
end