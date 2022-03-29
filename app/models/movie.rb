class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniquness: true
  validates :overview, presence: true
end
