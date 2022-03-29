class List < ApplicationRecord
  has_many :bookmarks
  validates :name, uniquness: true
end
