require 'rest-client'
class OxfordService

    def initialize(definition)
      @definition = definition
    end

    def get_oxford_definition
      begin
        url = "https://od-api.oxforddictionaries.com/api/v2/entries/en-us/#{params[:word]}"
        response = RestClient.get(
          url,
          headers = {
            "Accept" => "application/json",
            'app_id' => ENV['app_id'],
            'app_key' => ENV['app_key']
          }
        )
        word = JSON.parse(response.body)
        word = word['id']
        saved_words<<word
        last_five_saved_words = saved_words.last(5)
        definition = word['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions'][0]
        return false unless definition
        definition
      rescue => exception
        error_detail = JSON.parse(e.response)
        puts "ERROR: An error was encountered, #{e.http_code} HTTP code received Exception #{e.class.name}:#{e.message}"
        return render :status => 404
      end
    end

end