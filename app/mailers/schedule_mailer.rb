class ScheduleMailer < ApplicationMailer
  default from: "no-reply@asnet.com.vn"

  def send_notification(schedule)
    @schedule = schedule
    @email = @schedule.team.users.pluck(:email)
    @user = @schedule.user
    mail to: @email, subject: "Schedule Notification"
  end
end
