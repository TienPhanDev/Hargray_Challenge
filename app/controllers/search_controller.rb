require 'rest-client'

class SearchController < ApplicationController
  def index
  end

  def search
    word = find_word(params[:word])
    @definition = word['results'][0]['lexicalEntries'][0]['entries'][0]["senses"][0]['definitions'][0]
    byebug
    unless @definition
      byebug
      flash[:alert] = 'Word not found'
      return render action: :index
    end
  end

  private

  def request_api(url)
    response = RestClient.get(
      url,
      headers = {
        'app_id' => 'f14d2e47',
        'app_key' => '236aefef61ef143897ebb48b398cef9c'
      }
    )
    if response.code == 200
      json = JSON.parse(response.body)
    else
      return response.code
    end
    #return nil if response.status != 200
    #JSON.parse(response.body)
  end

  def find_word(word)
    request_api(
      "https://od-api.oxforddictionaries.com/api/v2/entries/en-us/#{word}"
    )
  end

end
