Dir[File.dirname(__FILE__) + '/frank_researcher/*.rb'].each { |f| require f }

module FrankResearcher
  
  def self.search query
    client.find(query)
  end

  class << self
    private
      def client
        @client ||= FrankResearcher::Client.new()
      end
  end
end
