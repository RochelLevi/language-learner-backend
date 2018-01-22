class User < ApplicationRecord
  has_many :learned_words
  has_many :points

  def languages
    languages = self.learned_words.map do |w|
      w.language
    end.uniq
  end

  # def five_random_words(language_id)
  #   language = Language.find(language_id)
  #   five_words = []
  #   while five_words.length < 5 do
  #     index = (rand * language.words.length).ceil
  #     word = Word.find(index)
  #     if !self.learned_words.find_by(word_id: word.id)
  #       five_words << word
  #     end
  #   end
  #
  #   return five_words
  # end

  def user_to_render
    hash = {"id": self.id, "username": self.username, "languages": {}}

    self.languages.map do |l|
      hash[:"languages"][l.id] = {"id": l.id, "name": l.name, "learned_words_ids": [], "points": nil}
    end

    self.learned_words.each do |word|
      hash[:"languages"][word.language.id][:"learned_words_ids"] << word.word_id
    end

    self.points.each do |point|
      hash[:"languages"][point.language.id][:"points"] = point
    end

    return hash
  end

end
