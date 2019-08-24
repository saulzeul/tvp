class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_config, :user_config, :area_config, :general_config
  has_many :users
end
