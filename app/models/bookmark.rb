class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniquness: { scope: :list_id, message: 'should be unique' }
  validates :comment, length: { minimum: 6, too_short: '%{count} characters is the minimum allowed' }
end
