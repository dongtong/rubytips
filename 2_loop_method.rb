#encoding: utf-8
#
#方法1: loop
#当loop循环体中的语句多余一条时，使用do...end
#否则可以使用{...}
#loop如果想结束循环，是需要在循环体内，根据条件判断是否结束
loop do
   print "Do you want to continue? (y/n)"
   answer = gets.chomp.downcase
   if answer == "n"
      break
   end
end

random_num = Random.new.rand(5)
loop do
   print "Guess the number from 0 to 5 (e to exit): "
   answer = gets.chomp
   if answer == 'e'
	   puts "The number is #{random_num}"
	   break
   else
	   if answer.to_i == random_num
		   puts "You guessed the correct number"
		   break
	   else
		   puts "Correct number is #{random_num}"
	      puts "Try again:"
	   end
   end
end

loop do 
  print "Enter a number more than 10 or exit: "
  num = gets.chomp
  break if num.to_i > 10
end
