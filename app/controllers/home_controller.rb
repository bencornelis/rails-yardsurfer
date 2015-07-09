class HomeController < ApplicationController
  def index
    @popular_yards = Listing.most_popular(4)
  end
end
