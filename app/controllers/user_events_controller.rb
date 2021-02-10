class UserEventsController < ApplicationController
  before_action :set_user_event, only: %i[ show ]

  # GET /user_events or /user_events.json
  def index
    @user_events = UserEvent.all
  end

  # GET /user_events/1 or /user_events/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_event
      @user_event = UserEvent.find(params[:id])
    end
end
