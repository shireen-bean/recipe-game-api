class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :recipe_id, :eat_on
end
