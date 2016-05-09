class V1::SchedulesController < V1::BaseController
  before_action :authenticate_with_token!

  def show
    respond_with Schedule.find(params[:id])
  end

  def index
    if params[:user_id]
      respond_with current_user.schedules
    else
      respond_with Schedule.all
    end
  end

  def create
    schedule = current_user.schedules.build(schedule_params)
    if schedule.save
      render json: schedule, status: 201
      ScheduleMailer.send_notification(schedule).deliver
    else
      render json: { errors: schedule.errors }, status: 422
    end
  end

  private

  def schedule_params
    # sum the time & date then convert to time to save in date
    schedule_params = params.permit(:team_name, :time_open, :time_finish, :date, :content)
    schedule_params.merge!(team_id: Team.find_by(name: schedule_params[:team_name]).id)
    schedule_params.delete("team_name")
    return schedule_params
  end
end
