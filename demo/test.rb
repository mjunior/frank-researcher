require './lib/frank_researcher'

FrankResearcher.configure do |config|
  config.google_api_key = ENV['frank_google_api']
  config.google_cx = ENV['frank_google_cx']
end


FrankResearcher.search('ChatBot')
