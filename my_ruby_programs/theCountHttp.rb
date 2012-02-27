require 'net/http'

url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  search = http.request(req).body

  totaln = search.scan(/\bthe\b/)
  totali = search.scan(/\b(?i)the\b/)

  puts "#{totaln.count} : #{totali.count}"

  for n in totaln.count..(totali.count-1)
    totaln[n] = "---"
  end

  for i in 0..(totali.count-1)
    puts "#{totaln[i]} : #{totali[i]}"
  end

end
