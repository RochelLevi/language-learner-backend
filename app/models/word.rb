class Word < ApplicationRecord
  belongs_to :language
  has_many :learned_words
end
