class User < ApplicationRecord
  has_many :learned_words
  has_many :points

  validates :username, presence: true
  validates :password, presence: true

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
    languages =  []

    self.languages.map do |l|
      languages << {"id": l.id, "name": l.name, "points": self.points.find{|point| point.language_id == l.id}.total, "points_id": self.points.find{|point| point.language_id == l.id}.id}
    end

    # self.learned_words.each do |word|
    #   hash[:"languages"][word.language.id][:"learned_words_ids"] << word.word_id
    # end

    # self.points.each do |point|
    #   hash[:"languages"][point.language.id][:"points"] = point
    # end

    return languages
  end

end
