class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :fullname, :email, :status
  has_one :area
  has_one :role
end
