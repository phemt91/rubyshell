

#!/usr/bin/env ruby


$stdout.print"--> "
#qui il programma va in loop in attesa di input
$stdin.each_line do |line|
  pid = fork {
    exec line
  }

  Process.wait pid
end
