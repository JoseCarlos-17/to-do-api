class Users::Create::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :status
end
