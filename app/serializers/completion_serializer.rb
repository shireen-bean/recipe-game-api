class CompletionSerializer < ActiveModel::Serializer
  attributes :id, :image
  has_one :profile
  has_one :recipe
end
