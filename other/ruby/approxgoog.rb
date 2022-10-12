require "open-uri"
puts(open("https://google.com/search?q=" + gets).read).scan(/[\d,]+/)
