

#!/usr/bin/env ruby


#libreria standard ruby
require 'shellwords'
  #creiamo la costante BULTINS
  #Per il cambio di cartella usiamo il comando di ruby
  BUILTINS = {   'cd' => lambda {|dir| Dir.chdir(dir) },
              'exit' => lambda {|code = 0| exit(code.to_i) }
}

loop do #loop per il prompt
  $stdout.print"--> "
    line = $stdin.gets.chomp #gets per l'input
                             #chomp per rimuovere i whitespace
    command, *arguments = Shellwords.shellsplit(line)

    if BUILTINS[command]
       BUILTINS[command].call(*arguments)
    else
        pid = fork {
          exec line
        }
    Process.wait pid
    end
end
