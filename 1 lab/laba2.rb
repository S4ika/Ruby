require "yaml"


class Department
	attr_accessor :name
	attr_accessor :phone
	
	def initialize (name, phone, *duties)
		self.name = name
		self.phone = phone
		@duties = duties
		@index_selector = nil
	end
	#Kosherniy_vivod
	def to_s
		"Name: \"#{self.name}\"; Phone: #{self.phone} Duties : #{@duties}"
	end
	
	def add_duty(duty)
		@duties.append(duty)
	end
	
	def select_duty(index)
		@index_selector = index
	end
	
	def del_selected_duty
		@duties.delete_at(@index_selector)
		@index_selector = nil
	end
	
	def get_by_ind
		@duties[@index_selector]
	end
	
	def change_by_ind(info)
		@duties[@index_selector] = info
	end
	
	def all_duties
		res = "\"#{self.name}\" : "
		@duties.each {|s| res += s + "; "}
		res
	end
	
	def self.check_phone_num(num)
		/[1-9]*-[1-9]*-[1-9]*-[1-9]*-[1-9]*{16}/.match(num).to_s == num
	end
	
	def phone=(val)
		if self.class.check_phone_num(val) == true
		  @phone = val
		else
		  raise ArgumentError.new("Phone number is incorrect!")
		end
	end

	def self.new_dep_from_str(str)
		inf = str.chomp.split(";")
		new(inf[0],inf[1], *inf[2].split(', '))
	end
	
	def self.read_from_file(path)
		deps = []
		for str in File.readlines(path)
			#inf = str.chomp.split(";")
			deps.append(Department.new_dep_from_str(str))
		end
		deps
	end

	def self.puts_all_deps(deps)
		for dep in deps
			puts dep.to_s
		end
	end

	def self.write_to_file(deps,path)
		str = ""
		for dep in deps
			duties = ""
			for s in dep[2]
				duties += s + ", "
			end
			str += dep[0] + ";" + dep[1] + ";" + duties + "\n"
		end
		file = File.new("./#{path}", "w:UTF-8")
		file.print(str)
		file.close()
		return "#{path}"
	end

	def self.write_to_YAML(deps,path)
		File.open(path, "w") do |out|
			YAML.dump(deps,out)
		end
		path
	end

	def self.read_from_Yaml(path)
		return File.open("dep_data.yaml"){|t| YAML::load(t)}
	end

end


