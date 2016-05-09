class V1::TeamsController < V1::BaseController
  # before_action :authenticate_with_token!
  respond_to :json

  def show
    respond_with teams.find(params[:id])
  end

  def index
    respond_with current_user.teams
  end

  def create
    team = current_user.teams.build(team_params)
    if team.save
      render json: team, status: 201
    else
      render json: {errors: order.errors}, status: 422
    end
  end

  private

  def team_params
    team_params = params.permit(:name, :user_emails => [])
    emails = team_params[:user_emails]
    user_ids = emails.map {|email| User.find_by(email: email).id}
    team_params.merge!(user_ids: user_ids)
    team_params.delete("user_emails")
    return team_params
  end
end
