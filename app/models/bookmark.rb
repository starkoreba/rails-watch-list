# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }

  validates_uniqueness_of :movie, scope: :list
end
