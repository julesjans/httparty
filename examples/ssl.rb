dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require File.join(dir, 'httparty')
require 'pp'

class SSLSite
  include HTTParty
  format :html
end

# google.com redirects to www.google.com so this is live test for redirection
puts SSLSite.get('https://google.com')

puts File.read("#{__dir__}/../tmp/ssl.log")
