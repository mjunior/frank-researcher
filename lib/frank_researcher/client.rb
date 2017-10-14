require 'rest-client'

module FrankResearcher
  class Client
    attr_accessor :base_url
    def initialize
      google_key = FrankResearcher.configuration.google_api_key
      google_cx = FrankResearcher.configuration.google_cx
      @base_url = "https://www.googleapis.com/customsearch/v1?key=#{google_key}&cx=#{google_cx}"
    end

    def find params
      response = request(@base_url, params)
    end

    def request url, query
      response = RestClient.get("#{url}&q=#{query}", headers={content_type: :json, accept: :json})
      if response.code == 200
        JSON.parse(response.body, symbolize_names: true)
      end
    end
  end
end