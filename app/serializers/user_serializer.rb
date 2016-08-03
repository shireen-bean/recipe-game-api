class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile, :givenname, :lastname

  # def profile
  #   object.profiles.pluck(:id)
  # end

end
