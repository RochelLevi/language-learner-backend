class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :languages, serializer: UserLanguageSerializer
  # has_many :learned_words, serializer: LearnedWordSerializer
end
