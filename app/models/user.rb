class User < ApplicationRecord
  has_many :learned_words
  has_many :points

  def languages
    languages = self.learned_words.map do |w|
      w.language
    end.uniq
  end

  def user_to_render
    hash = {"id": self.id, "username": self.username, "languages": {}}

    self.languages.map do |l|
      hash[:"languages"][l.id] = {"id": l.id, "name": l.name, "learned_words": [], "points": nil}
    end

    self.learned_words.each do |word|
      hash[:"languages"][word.language.id][:"learned_words"] << word
    end

    self.points.each do |point|
      hash[:"languages"][point.language.id][:"points"] = point
    end

    return hash
  end

end
