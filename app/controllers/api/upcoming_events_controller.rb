class Api::UpcomingEventsController < ApplicationController
  def index
    response = HTTParty.get("https://api.meetup.com/NewYorkAdventureClub/events")

    render :json => response.body
  end

end
