require 'net/http'

class BadgeGeneratorCall

  URL_PREFIX = 'https://img.shields.io/badge/'.freeze

  def self.badge(label = 'label', message ='message', color = 'grey', style = 'flat-square')
    escapedUri = URI.escape(URL_PREFIX + "#{label}-#{message}-#{color}.svg?style=#{style}")
    uri = URI.parse(escapedUri)
    Net::HTTP.get(uri)
  end
end