class TeamController < ApplicationController
  def new
    @team=Team.find_by(id: params[:team_id])
  end
end
