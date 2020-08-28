require 'active_support/concern'
require "open-uri"
module WebScrapper
    extend ActiveSupport::Concern
    def self.getMargin(url, pattern,divider=nil );
        page = URI.open(url).read
        tags = page.scan(pattern)
        
        if divider
            return tags.length / divider
        end

        tags.length
    end
end 