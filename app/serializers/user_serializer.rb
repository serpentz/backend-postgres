class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :selected
  def selected
      self.object.posts.map{|el| el.id}
  end
end
