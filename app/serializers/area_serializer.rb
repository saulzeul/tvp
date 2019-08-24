class AreaSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :icon
  has_many :users
end
