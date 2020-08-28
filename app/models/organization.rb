class Organization < ApplicationRecord
    include WebScrapper
    belongs_to :group
    has_many :hierachies
    has_many :child_organization, class_name: :Hierachy, foreign_key: :organization_id
    has_one :location, dependent: :destroy;

    #Validations
    validates :org_type, inclusion: { in: %w(Show room, Service, Dealer)}
   
    base_price = 1000;
    flexible = WebScrapper.getMargin("http://reuters.com", "a", 100);
    fixed = WebScrapper.getMargin("https://developer.github.com/v3/#http-redirects", "status");
    prestige = WebScrapper.getMargin("http://www.yourlocalguardian.co.uk/sport/rugby/rss/", "pubDate")
    validates :pricing_policy, inclusion: {in: [base_price+flexible, base_price + fixed, base_price +prestige] }

    p `(#{base_price+flexible}) (#{base_price + fixed}) (#{base_price +prestige})`
    # some helper methods

    # get all the childrenassocitated with a certain org

    def child_org
        result = []
        children = child_organization.map { |child|  child.child_id } # this is  an array of child id 
        children.map do |id|
            child = Organization.find(id)
            if child
                result.push(child)
            end

        end
        result
    end
end
