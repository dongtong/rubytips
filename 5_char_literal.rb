puts ?c
puts ?q

case $stdin.getc.downcase
when ?y then puts "You said 'yes'"
when ?n then puts "You said 'no'"
else puts "I do not know what you said!"
end
