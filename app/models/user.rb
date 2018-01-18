class User < ApplicationRecord
  has_many :learned_words
  has_many :points

  def languages
    languages = self.learned_words.map do |w|
      w.language
    end.uniq
  end

  # def languages_and_learned_words
  #   hash = Hash.new { |h, k| h[k] = [] }
  #   return self.learned_words.inject(hash) do |hash, word|
  #     hash[word.language] << word.as_json
  #     hash
  #   end
  # end

end
