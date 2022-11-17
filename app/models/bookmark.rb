class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_associeted %i[movie list], uniqueness: true
end
