class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users, serializer: UserTeamSerializer
end
