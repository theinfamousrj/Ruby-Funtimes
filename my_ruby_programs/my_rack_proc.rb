# my_rack_proc.rb
my_rack_proc = lambda do |env|
  [200, {"Content-Type" => "text/plain"},
  ["You typed: #{ARGV[0]}"]]
end

puts my_rack_proc.call({})
