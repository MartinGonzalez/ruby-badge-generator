require 'net/http'

class BadgeGenerator

  URL_PREFIX = 'https://img.shields.io/badge/'.freeze

  def self.badge(label = 'label', message ='message', color = 'grey', style = 'flat-square')
    escapedUri = URI.escape(URL_PREFIX + "#{label}-#{message}-#{color}?style=#{style}.svg")
    uri = URI.parse(escapedUri)
    Net::HTTP.get(uri)
  end
end