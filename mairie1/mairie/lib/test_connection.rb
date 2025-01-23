# test_connection.rb
require 'open-uri'
require 'nokogiri'

begin
  url = "https://www.google.com"
  doc = Nokogiri::HTML(URI.open(url))
  puts "Connexion réussie à #{url}"
rescue SocketError => e
  puts "Network error: #{e.message}"
rescue OpenURI::HTTPError => e
  puts "HTTP error: #{e.message}"
end