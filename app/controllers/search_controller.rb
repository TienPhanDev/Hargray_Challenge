require 'rest-client'

class SearchController < ApplicationController
  @@saved_words = []

  def search
    byebug
    word = find_word(params[:word])
    @word = word['id']
    @@saved_words<<@word
    byebug
    @saved_words = @@saved_words
    @definition = word['results'][0]['lexicalEntries'][0]['entries'][0]["senses"][0]['definitions'][0]
    unless @definition
      flash[:alert] = 'Word not found'
      return render action: :index
    end
  end

  private

  def request_api(url)
    app_id = ENV['app_id']
    app_key = ENV['app_key']
    response = RestClient.get(
      url,
      headers = {
        'app_id' => app_id,
        'app_key' => app_key
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
