# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  time_open   :integer
#  time_finish :integer
#  content     :text
#  team_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :datetime
#  user_id     :integer
#

class Schedule < ActiveRecord::Base
  validates :time_open, :time_finish, :date, :content, :team_id, presence: true
  validates :time_open, :numericality => { :greater_than => 8, :less_than => :time_finish}
  validates :time_finish, :numericality => { :greater_than => :time_open, :less_than => 24}

  belongs_to :team
  belongs_to :user
end
