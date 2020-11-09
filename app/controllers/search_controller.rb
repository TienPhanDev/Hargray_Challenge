require 'rest-client'
class SearchController < ApplicationController
  @@saved_words = []
  rescue_from ActionController::RoutingError, :with => :render_404

  def index
  end

  def oxford
    get_definition('oxford')
  end

  def webster
    get_definition('webster')
  end

  #check which API was called
  def get_definition(source)
    if source == "oxford"
      #OxfordService.new(params[:word]).get_oxford_definition
      @oxford_service = OxfordService.new
      @definition = @oxford_service.get_oxford_definition
    elsif source == "webster"
      #WensterService.new(params[:word]).get_webster_definition
      @webster_service = WebsterService.new
      @definition = @oxford_service.get_webster_definition
    end
  end

  # def search
  #   @saved_words = []
  #   begin
  #     url = "https://od-api.oxforddictionaries.com/api/v2/entries/en-us/#{params[:word]}"
  #     response = RestClient.get(
  #       url,
  #       headers = {
  #         "Accept" => "application/json",
  #         'app_id' => ENV['app_id'],
  #         'app_key' => ENV['app_key']
  #       }
  #     )
  #     word = JSON.parse(response.body)
  #     @word = word['id']
  #     @@saved_words<<@word
  #     @saved_words = @@saved_words.last(5)
  #     @definition = word['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions'][0]
  #   rescue RestClient::ExceptionWithResponse => e
  #     error_detail = JSON.parse(e.response)
  #     puts "ERROR: An error was encountered, #{e.http_code} HTTP code received Exception #{e.class.name}:#{e.message}"
  #     puts "Exception detail is #{error_detail['error']}"
  #     puts "#{error_detail.inspect}"
  #     puts "#{e.response.headers}"
  #     logger.error("Error Message for log: #{e.message} => #{e.response.body}")
  #     logger.error("Logged error Request Parameters: => #{e.response.request.inspect}")
  #     logger.error("Logged error Response Parameters: => #{e.response.headers}")
  #     flash[:alert] = "Exception message is #{error_detail['error']}"
  #     return render :status => 404
  #   end
  #   rescue NoMethodError 
  #     return render :status => 404
  # end

end