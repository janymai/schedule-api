class UserTeamSerializer < TeamSerializer
  def include_user?
    false
  end
end
