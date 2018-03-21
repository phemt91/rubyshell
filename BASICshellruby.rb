
#libreria standard di ruby
#tiene la comand history automaticamente
#printa a schermo il comand prompt



require 'readline'

while input = Readline.readline("--> ", true)
  break                       if input == "exit"
  puts Readline::HISTORY.to_a if input == "crono"
  puts " {-- ctrl+R for reverse-history search \r\n  -- ctrl+w for delete word --}" if input == "help"


  # Remove blank lines from history
  Readline::HISTORY.pop if input == ""

  system(input)
end
