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

def sum_digts_div_3(num)
	sum = 0
	while(num != 0)
		if (num%10)% 3 == 0
			sum += num%10
		end
		num /= 10
	end
	sum
end

def max_count_vz_prost(num,div)
	count = 0
	while num > 0
		if alg_Ev(num%10,div) == 1
			count += 1
		end
		num /= 10
	end
	count
end

def method_3(num)
	iter = 1
	div = 1
	max_count = 0
	until iter >= num
		if num%iter == 0
			t = num
			temp_max = max_count_vz_prost(t,iter)
			if temp_max > max_count
				max_count = temp_max
			end
		end
		iter+=1
	end
	max_count
end

# Метод 1 Найти количество чисел, взаимно простых с заданным.
# Метод 2 Найти сумму цифр числа, делящихся на 3
# Метод 3 Найти делитель числа, являющийся взаимно простым с
# наибольшим количеством цифр данного числа.
case ARGV[0]
  when "1"
    puts count_prime_digits(ARGV[1].to_i)
  when "2"
    puts sum_digts_div_3(ARGV[1].to_i)
  when "3"
    puts method_3(ARGV[1].to_i)
  else
    puts "Из 1-3 выбрать что то другое не вежливо =((((((
	Теперь придется перезапускать программу"
end