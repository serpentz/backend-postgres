class PostSerializer < ActiveModel::Serializer
  attributes :id, :text, :url
  has_many :users
  has_many :categories
end