class UserEventDataController < ApplicationController
  before_action :set_user_event_datum, only: %i[ show ]

  # GET /user_event_data or /user_event_data.json
  def index
    @user_event_data = UserEventDatum.all
  end

  # GET /user_event_data/1 or /user_event_data/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_event_datum
      @user_event_datum = UserEventDatum.find(params[:id])
    end
end
