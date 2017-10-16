class ProfilesController < ApplicationController
    def index
    @profiles = Profile.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
    end
  end
end
