# my_rack_proc2.rb
require 'rack'
Rack::Handler::WEBrick

my_rack_proc2 = lambda do |env|
  [200, {"Content-Type" => "text/plain"},
  ["You typed: #{ARGV[0]}"]]
end

Rack::Server.new( { :app => my_rack_proc2, :server => 'webrick', :Port => 8500} ).start
