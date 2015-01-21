class SearchController < ActionController::Base
  def index
    @results = ['modern flats', 'country house']
  end
end