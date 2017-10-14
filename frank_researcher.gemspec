Gem::Specification.new do |s|
  s.name        = 'frank_researcher'
  s.version     = '0.1.1'
  s.date        = '2017-10-14'
  s.summary     = "Frank Research"
  s.description = "Ruby client for Google Custom Search"
  s.authors     = ["Maurício Jr."]
  s.email       = 'mauriciojs.junior@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/frank_researcher'
  s.license     = 'MIT'

  s.add_dependency('rest-client', '~> 2.0')
end
