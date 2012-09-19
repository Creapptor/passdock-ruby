require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('passdock', '0.1.5') do |p|
  p.description     = "Talk with Passdock API"
  p.url             = "http://github.com/Creapptor/passdock-ruby"
  p.author          = "Creapptor S.A."
  p.email           = "info@creapptor.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }