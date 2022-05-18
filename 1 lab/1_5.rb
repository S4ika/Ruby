#2 Дана строка, состоящая из символов латиницы. Необходимо проверить,
#упорядочены ли строчные символы этой строки по возрастанию.
def poryadok(str)
	str.split("") == str.split("").sort
end

#10 Дана строка. Необходимо подсчитать количество букв "А" в этой строке.
def find_A(str)
	str.split("").select{ |s| (s == "A" || s == "А")}.size
end

#17 Дана строка в которой записан путь к файлу. Необходимо найти
#имя файла без расширения.
def find_name_of_file(file_path)
	file_path.slice(/\w*\.rb/).split(".")[0]
end

def date(string)
  string.scan(/
    \s+((\d{2})
    \s+(?:декабря|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября)
    \s+\d{1,4})/x)
end

#1.2 Дана строка. Необходимо найти все строчные символы латиницы,
#которые в ней используются.
def find_lower_chars(str)
	str.scan(/[a-z]/)
end

#1.10 Дана строка. Необходимо найти количество задействованных
#символов латиницы в этой строке (без дубликатов).
def find_uniq_lower_chars(str)
	str.scan(/[a-z]/).uniq
end


my_str = "abcdАefA1abcde"
#puts poryadok(my_str)
#puts find_A(my_str)
path = "C:\Users\sn41l\Documents\GitHub\Ruby\1_lab\ file.rb"
#puts find_uniq_lower_chars(my_str)
fdate = "Ты сказал что то про 24 февраля 2022 ?"
puts date(fdate)