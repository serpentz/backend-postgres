class PostSerializer < ActiveModel::Serializer
  attributes :id, :url, :text,:created_at, :tags
  def tags
      self.object.categories.map{|el|
       {id: el.id, name: el.name}
   }
  end
end
