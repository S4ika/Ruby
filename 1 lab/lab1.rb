#puts "Hello, " + ARGV[0]
#ARGV.clear
#Task 3
print "Какой любимый язык? "
lang = gets.chomp
case lang
	when "Ruby"
		puts "Подлиза"
	when "C++"
		puts "Бедолага"
	when "C#"
		puts "Ну Ruby, так Ruby"
	when "Python"
		puts "Это как Ruby, только хуже"
	else
		puts "Хороший выбор - Ruby! А твой выбор плох =)"
	end