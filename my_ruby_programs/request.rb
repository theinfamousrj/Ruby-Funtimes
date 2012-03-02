# request.rb
class Request
  def call(env)
    req = Rack::Request.new(env)
    txt = req.params['txt']
 
    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "The text you typed: #{txt} | reversed: #{txt.reverse}\n"
      res.write str 
    end
  end
end