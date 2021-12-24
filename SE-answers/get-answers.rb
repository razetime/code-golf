require 'csv'

table = CSV.parse(File.read("QueryResults.csv"), headers: true)
for entry in table
    id = entry["Id"]
    lang = entry["Body"].lines[0].gsub(/<[^<>]+>/,"").split(?,)[0].gsub(/[^A-Za-z\d]+/,"") # First line with tags removed
    code = (entry["Body"][/<code>(.+?)<\/code>/m,1]||"") # First code block, non-greedy
                        .gsub("&quot;",?")
                        .gsub("&lt;",?<)
                        .gsub("&gt;",?>)
                        .gsub("&amp;",?&);
    puts "ID: #{id}
Language: #{lang}
Code: #{code}"
    puts
    # Make language directory if doesn't exist.
    begin
        Dir.mkdir(lang) unless File.exists?(lang)

        File.write("#{lang}/#{id}", code)
    rescue Exception
    end
end
