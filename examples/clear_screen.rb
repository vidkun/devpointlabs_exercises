system("clear")
count = 0
loop do 
  puts "********* hi ******************* #{count}"
  count += 1
  sleep(0.1)
  system("clear") if (count % 10) == 0 
  exit if count == 10000
end