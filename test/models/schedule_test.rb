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

require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
