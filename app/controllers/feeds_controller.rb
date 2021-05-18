class FeedsController < ApplicationController
  layout false
  def index
    url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=d2136c3cf54d4638afa776dc6055a159"
    response = HTTParty.get url
    # result = ActiveSupport::JSON.decode(response)
    @posts = response["articles"]
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end
end
