class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :level, :user_id, :favorites, :schedules
end
