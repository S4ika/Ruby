#Дан целочисленный массив. Необходимо найти индекс
#минимального элемента.

#Task 2
def ind_min_el(arr)
	arr.index(arr.min)
end

#14
#Дан целочисленный массив и интервал a..b. Необходимо найти
#количество элементов в этом интервале.

# def sum_el_in_rng(arr,rng)
	# if rng.begin >= 0 and rng.end <= arr.length-1
		# sum = 0
		# for i in rng
			# sum += arr[i]
		 # end
	# else
		 # puts 'Давай нормальный промежуток блин, зачем тебе nil`ы считать?!'
	# end
	# sum
# end

#26
#Дан целочисленный массив. Необходимо найти количество
#элементов между первым и последним минимальным.

def sum_elems_btwn_mins(arr)
	f_min = arr.index(arr.min)
	l_min = arr.index(arr.max)
	sum = 0
	if f_min > l_min
		rng = (l_min+1..f_min-1)
	else
		rng = (f_min+1..l_min-1)
	end
	rng.each{|i| sum += 1}
	sum
end

#1.38 Дан целочисленный массив и отрезок a..b. Необходимо найти
#количество элементов, значение которых принадлежит этому отрезку.

def count_el_like_rng(arr,rng)
	t = (1...arr.size).select{ |i| rng.include?(arr[i]) }
	t.size
end

#1.50. Для двух введенных списков L1 и L2 построить новый список,
#состоящий из элементов, встречающихся только в одном из этих списков и
#не повторяющихся в них.
def dif_digits_in_arrs(arr1,arr2)
	(arr1-arr2)+(arr2-arr1)
end

my_arr = [3,8,16,9,22,47,28,58,9,1,3,2,1]
s_arr = [3,8,16,9,22,20,28,58,9,99,3,15,1]
range = (4..12)
#puts ind_min_el(my_arr)
#puts sum_el_in_rng(my_arr,range)
#puts sum_elems_btwn_mins(my_arr)
#puts count_el_like_rng(my_arr,range)
puts dif_digits_in_arrs(my_arr,s_arr)