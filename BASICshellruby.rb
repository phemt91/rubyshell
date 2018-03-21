prompt = "> "

print prompt

while (input = gets.chomp)
  break if input == "chiudi"

  system(input)
  print prompt
end
