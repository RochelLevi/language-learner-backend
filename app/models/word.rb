class Word < ApplicationRecord
  belongs_to :language
  has_many :learned_words

  def self.five_random_words(language_id, user_id)
    language = Language.find(language_id)
    user = User.find(user_id)
    learned_words = user.learned_words
    unlearned_words = language.words.reject{|w| learned_words.include?(w)}

    unlearned_words.sample(5)

  end

end
