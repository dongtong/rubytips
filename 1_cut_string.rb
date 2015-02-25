#encoding = utf-8
file_name = "list.html.erb"

parts = file_name.split('.')
puts parts.inspect              # => ["index", "html", "erb"]
puts parts[0..-2].join(".")     # => "index.html"
puts parts.last                 # => "erb"

puts "************************"

match = /(.*)\.(.*)/.match(file_name)
puts match                      # => "index.html.erb"
puts match[0]                   # => "index.html.erb"
puts match[1]                   # => "index.html"
puts match[2]                   # => "erb"

puts "************************"
# 搜索一个分隔符或者一个正则表达式，返回两个部分，匹配之前的和匹配之后的
# 如果没有发现，返回原字符串和两个空字符串组成的数组
puts file_name.partition(".")   # => ["index", ".", "html.erb"]
file, _, ext = file_name.rpartition('.')    # => 从右边开始切分
puts file                       # => "index.html"
puts ext                        # => "erb"
puts file_name.partition('/').inspect



