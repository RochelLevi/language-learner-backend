class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :languages_plus_info
end
