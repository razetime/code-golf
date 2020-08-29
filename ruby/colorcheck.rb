def color(index)
  normal = "\e[#{index}m#{index}\e[0m"
  bold = "\e[#{index}m\e[1m#{index}\e[0m"
  "#{normal}  #{bold}  " 
end

8.times do|index| 
  line = color(index + 1)
  line += color(index + 30)
  line += color(index + 90)
  line += color(index + 40)
  line += color(index + 100)
  puts line
end