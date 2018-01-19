class Language < ApplicationRecord
  has_many :words
  has_many :points
  has_many :learned_words, through: :words

  

end
