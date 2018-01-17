class User < ApplicationRecord
  has_many :learned_words
  has_many :languages, through: :learned_words
  has_many :points
end
