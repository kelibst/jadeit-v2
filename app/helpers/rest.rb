require 'nokogiri'
require 'httparty'
require 'rubocop'
require "open-uri"
require 'byebug'
def scraper(url, pattern,divider=nil );
    page = URI.open(url).read
    tags = page.scan(pattern)
    
    if divider
        return tags.length / divider
    end

    tags.length
end
url = 'http://reuters.com'
p scraper(url, "a", 100)
p scraper("https://developer.github.com/v3/#http-redirects", "status")
p scraper("http://www.yourlocalguardian.co.uk/sport/rugby/rss/", "pubDate")
