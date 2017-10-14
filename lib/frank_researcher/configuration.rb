module FrankResearcher
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :google_api_key
    attr_accessor :google_cx

    def initialize
      @google_api_key = 'google_api_key'
      @google_cx = 'google_cx'
    end
  end
end