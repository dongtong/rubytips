def program_name; "Email Template"; end

#版本信息放入module,属于常量
module Version
	def version; "0.0.1"; end
end

class CoffeeService
	def inquiry_service
		"order you a cup of coffee"
	end
end

class EmailTmp
	include Version #包含module, 可以访问module中的方法，常量等等信息
	attr_reader :designation
	attr_accessor :special_feature

	def initialize(designation)
		@designation = designation #只读的，在初始化时可以赋值
	end

	def salutation; "Most agreeable to you"; end

	def service_inquiry
		special_feature.inquiry_service
	end

	def greet(title, first_name, last_name)
		full_name = "#{first_name} #{last_name}"
		puts %Q{
			#{salutation}, #{title} #{full_name}. \n
		     Welcome to #{program_name} version #{version}. \n
			 My name is #{designation}. \n
			 May I #{service_inquiry}
		}
	end
end

imp = EmailTmp.new("Seeree")
imp.special_feature = CoffeeService.new
imp.greet "Commander", "Dong", "Tong"
