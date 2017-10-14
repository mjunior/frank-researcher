require '../lib/frank_researcher'
require 'json'
FrankResearcher.configure do |config|
  config.google_api_key = ENV['frank_google_api']
  config.google_cx = ENV['frank_google_cx']
end



def call query
 response = FrankResearcher.search(query)
  answer = "*Encontrei estes links na internet * \n\n"
  response[:items].each do |item|
    answer += "#{item[:title]}\n"
    answer += "#{item[:link]} \n\n"
  end
  answer += "\n -- "
end


x = call 'ChatBot'
puts x
puts "************************************"
x = call 'Barack Obama'

puts x
puts "************************************"

x = call 'RAils Admin'
puts x
puts "************************************"