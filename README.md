# Frank Researcher
Ruby Client for Google [Custom Search](https://developers.google.com/custom-search/)


## Configuration


1. [Get Google Custom Search api key](https://developers.google.com/custom-search/json-api/v1/introduction#identify_your_application_to_google_with_api_key)
2. [Get Custom search engine ID in yout Control Panel](https://cse.google.com/all)

```ruby
FrankResearcher.configure do |config|
  config.google_api_key = ENV['frank_google_api']
  config.google_cx = ENV['frank_google_cx']
end```

## Usage

```ruby
FrankResearcher.search('Ruby on rails')
```

The search is executed on the websites you have specified in the Custom Search settings

