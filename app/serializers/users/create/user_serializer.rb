class Users::Create::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
end
