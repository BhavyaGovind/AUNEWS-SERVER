class NewsController < ApplicationController
  before_action :set_news, only: %i[ show edit update destroy ]

  # GET /news or /news.json
  def index
    @news = News.all
  end

  # GET /news/1 or /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET
  def edit
  end

  # POST
  def create
    @news = News.new(news_params)
    if params[:news][:image].present?
      req = Cloudinary::Uploader.upload(params[:news][:image])#request cloudinary for image and save in variable
      @news.image = req["public_id"].to_s
      @news.save #append image to listing
    end

    if params[:news][:video].present?
      req = Cloudinary::Uploader.upload(params[:news][:video])#request cloudinary for image and save in variable
      @news.video = req["public_id"]
      @news.video #append image to listing
    end

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: "News was successfully created." }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @news = News.find(params[:id])

    if params[:news][:image].present?
      req = Cloudinary::Uploader.upload(params[:news][:image])#request cloudinary for image and save in variable
      @news.image = req["public_id"].to_s
      @news.update_attributes news_params
      @news.save
    end
    if params[:news][:video].present?
      req = Cloudinary::Uploader.upload(params[:news][:video])#request cloudinary for image and save in variable
      @news.video = req["public_id"]
      @news.update_attributes news_params
      @news.save
    end

    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: "News was successfully updated." }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: "News was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_params
      params.require(:news).permit(:title, :subtitle, :description, :link, :video)
    end
end
