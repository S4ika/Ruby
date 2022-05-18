#Прочитать список строк из файла. Упорядочить по длине строки.
def sort_str(str)
	str.sort{|a,b| a.length <=> b.length}
end
#Дан список строк из файла. Упорядочить по количеству слов в строке.
def sort_str_count_wrds(str)
	str.sort{|a,b| a.split(' ').length <=> b.split(' ').length}
end
#В порядке увеличения среднего веса ASCII-кода символа строки
def avg_ascii(str)
	sum = 0
	str.each_byte{|i| sum+= i.to_i}
	sum / str.split('').length
end


def sort_str_avg_ascii(str)
	str.sort{|a,b| avg_ascii(a) <=> avg_ascii(b)}
end

file = File.open(ARGV[0]) 
strings = file.readlines.map{|s| s.chomp}
#puts sort_str(strings)
#puts sort_str_count_wrds(strings)
#puts avg_ascii(strings)
puts sort_str_avg_ascii(strings)