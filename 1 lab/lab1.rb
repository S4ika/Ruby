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


puts("Кручу-верчу, обмануть хочу! Угадай в каком из 5 стаканов вода")
num = gets.to_i
if num <= 6
	puts("В этот раз не повезло(\nЕще попытка 100 у.е.")
else 
	puts("Так всего 5 стаканов, куда такой номер?")
end
unless num > 5
	puts("В этот раз не повезло(\nЕще попытка 100 у.е.")
end