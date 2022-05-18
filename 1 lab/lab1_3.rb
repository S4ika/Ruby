# Написать методы, которые находят минимальный,
# максимальный элементы, сумму и произведение элементов.
# Каждая операция в отдельном методе. Решить задачу с
# помощью циклов.

def min_el_in_arr(arr)
	min = arr[0]
	for i in (1..arr.length-1) do
		if (arr[i] < min)
			min = arr[i]
		end
	end
	min
end

def max_el_in_arr(arr)
	max = arr[0]
	for i in (1..arr.length-1) do
		if (arr[i] > max)
			max = arr[i]
		end
	end
	max
end

def sum_elems_in_arr(arr)
	sum = 0
	for i in (0..arr.length-1) do
			sum += arr[i]
		
	end
	sum
end

def mul_elems_in_arr(arr)
	mul = 1
	for i in (0..arr.length-1) do
			mul *= arr[i]
		
	end
	mul
end

def get_int_list
    ARGV.clear
    return  gets.chomp.split.map(&:to_i)
end

program_choice = ARGV[0]

if ARGV[1].to_i == 1 then
     lst = get_int_list
else 
    file = File.open(ARGV[2]) 
    lst = file.readlines[0].split.map(&:to_i)
end

case program_choice
    when "1"
        puts ("Максимальный элемент: #{max_el_in_arr(lst)}")
    when "2"
        puts ("Минимальный элемент: #{min_elin_arr(lst)}")
    when "3"
        puts ("Сумма элементов: #{sum_elems_in_arr(lst)}")
    when "4"
        puts ("Произведение элементов: #{mul_elems_in_arr(lst)}")
end
