class SearchController < ApplicationController
  def index
  end

  def search
    definition = find_word(params[:word])
    unless definition
      flash[:alert] = 'Word not found'
      return render action: :index
    end
    # ...
  end

end
