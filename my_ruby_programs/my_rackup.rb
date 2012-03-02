# my_rackup.rb

class MyRackup
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["You typed: #{ARGV[0]}"]]
  end
end
