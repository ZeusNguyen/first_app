class UserSerializerV1 < ActiveModel::Serializer
  attributes :id, :name, :email, :address
end
