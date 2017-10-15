require 'spec_helper'
require 'json'
require_relative '../../lib/frank_researcher'

describe FrankResearcher do
  before do
    fake_response = JSON.parse(File.read(File.expand_path("../../fixtures/fake_response.json", __FILE__)))
    allow(FrankResearcher).to receive(:search).and_return(fake_response)
  end
  
  it '#search' do
    response = FrankResearcher.search('Rails')
    expect(response).to have_key("items")
  end
end