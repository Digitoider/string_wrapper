Gem::Specification.new do |s|
  s.name        = 'string_wrapper'
  s.version     = '0.1.0'
  s.date        = '2018-08-08'
  s.summary     = 'Replace strings in any order.'
  s.description = 'A simple gem to replace strings with design pattern appliance.'
  s.authors     = ['Alexander Brjakin']
  s.email       = 'digitoider@gmail.com'
  s.files       = [
    'lib/string_wrapper.rb',
    'lib/string_wraper/states/string_wrapper_initial_state.rb',
    'lib/string_wraper/states/string_wrapper_pattern_specified_state.rb',
    'lib/string_wraper/states/string_wrapper_substitute_specified_state.rb'
  ]
  s.homepage    = 'http://rubygems.org/gems/string_wrapper'
  s.license     = 'MIT'
end
