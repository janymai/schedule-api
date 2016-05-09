class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :time_open, :time_finish, :content, :date
  has_one :team
end
