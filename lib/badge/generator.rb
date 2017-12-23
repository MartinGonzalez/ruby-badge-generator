require 'net/http'

class BadgeGenerator

  URL_PREFIX = 'https://img.shields.io/badge/'.freeze

  def badge(label = 'label', message ='message', color = 'grey', style = 'flat-square')
    escapedUri = URI.escape(URL_PREFIX + "#{label}-#{message}-#{color}.svg")
    uri = URI.parse(escapedUri)
    Net::HTTP.get(uri)
  end

end



a = BadgeGenerator.new

puts a.badge