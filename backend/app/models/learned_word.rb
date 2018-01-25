class LearnedWord < ApplicationRecord
  belongs_to :word
  belongs_to :user
  has_one :language, through: :word

end
