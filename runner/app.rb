require 'open-uri'

begin
  10.times do
    open('http://app')
    puts "OK"
  end
rescue
  puts "NG"
  exit 1
end

puts "Completed!"
