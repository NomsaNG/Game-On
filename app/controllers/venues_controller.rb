class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @games = Game.all

    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {venue: venue})
      }
    end
  end
end
