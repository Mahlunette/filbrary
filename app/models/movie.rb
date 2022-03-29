class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :deny
  validates :title, uniquness: true
  validates :overview, presence: true
end
