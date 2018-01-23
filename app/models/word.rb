class Word < ApplicationRecord
  belongs_to :language
  has_many :learned_words

  def self.five_random_words(language_id, user_id)
    language = Language.find(language_id)
    words_pool = language.words
    user = User.find(user_id)
    five_words = []
    while five_words.length < 5 do
      index = (rand * words_pool.length).ceil
      word = words_pool[index]
      if (!user.learned_words.find_by(word_id: word.id) && !five_words.find{|el| el == word})
        five_words << word
      end
    end

    return five_words
  end

end
