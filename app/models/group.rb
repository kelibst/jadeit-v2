class Group < ApplicationRecord
  belongs_to :country
  has_many :organizations
end
