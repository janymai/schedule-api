# == Schema Information
#
# Table name: placements
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_placements_on_team_id  (team_id)
#  index_placements_on_user_id  (user_id)
#

class Placement < ActiveRecord::Base
  belongs_to :team, inverse_of: :placements
  belongs_to :user, inverse_of: :placements
end
