class Users::Show::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :status
end
