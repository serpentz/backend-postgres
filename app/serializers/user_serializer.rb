class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :selected
  def selected
      user.posts.map{|el| el.id}
  end
end
