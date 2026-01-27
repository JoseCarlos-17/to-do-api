class Users::Show::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :status, :profile_image

  def profile_image
    object.profile_image_url
  end
end
