class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @profiles = Profile.all
    @posts = Post.last(6)
  end
end
