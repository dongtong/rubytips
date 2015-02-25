#system "ls -l" # => 调用系统shell

#system "ls", "-l"

command = ["ls"]
options = ["-s"]

#splat 语法
system *(command + options)

greeting = "foobar"
str = %W[1 2 "Hello" #{greeting}] #分隔符是空格，带有自省
puts str
