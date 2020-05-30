require 'csv'

cats = CSV.read('catfixes.csv')

total = 0

cats.each do | fix | 
  file, cat_list = fix

  filepath = "#{file}.md"

  next if !File.exist? filepath

  puts filepath

  lines = []
  added = false
  File.readlines(filepath).each do |line|
    lines << line
    if !added and line.start_with? '---'
      lines << "categories: #{cat_list}\n"
      added = true
    end
  end
  if added
    total = total + 1
  else
    puts '  did not have front matter'
  end

#  puts lines

  filepath = "#{file}.mdnew"
  open(filepath, 'w') { |f|
    lines.each do | line |
      f << line
    end
  }

end

puts
puts "Wrote #{total} files"


# When done, at command line, rename *.mdnew to *.md:
# for file in *.mdnew; do mv "$file" "${file%.mdnew}.md"; done
