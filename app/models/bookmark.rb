class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_associeted :movie, :list, uniqueness: true
end
