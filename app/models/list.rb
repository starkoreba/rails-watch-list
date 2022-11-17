class List < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true, uniqueness: true
end
