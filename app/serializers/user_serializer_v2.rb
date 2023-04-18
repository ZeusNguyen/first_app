class UserSerializerV2 < ActiveModel::Serializer
  attributes :id, :name, :email, :address
end
