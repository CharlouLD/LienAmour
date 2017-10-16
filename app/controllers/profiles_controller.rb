class ProfilesController < ApplicationController

  before_action :authenticate_user!
  before_action :find_profiles, only: [:show, :edit, :update, :destroy]


  def index
    @profiles = Profile.all

    @markers = Gmaps4rails.build_markers(@profiles) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:notice] = "Profil créé"
      redirect_to root_path
    else
      flash[:alert] = "Profil non créé"
      render :edit
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def profile_params
    params.require(:profile).permit(
      :last_name,
      :first_name,
      :birthdate,
      :address,
      :phone,
      :mobile,
      :mail,
      :job,
      :company,
      )
  end

  def find_profiles
    @profile = Profile.find(params[:id])
  end
end
