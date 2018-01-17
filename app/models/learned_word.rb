class LearnedWord < ApplicationRecord
  belongs_to :words
  belongs_to :user
end
