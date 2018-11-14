class PostSerializer < ActiveModel::Serializer
  attributes :id, :url, :text, :tags
  def tags
      self.object.categories.map{|el| el.id}
  end
end
