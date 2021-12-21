class VideoChannelsController < ApplicationController
  before_action :set_video_channel, only: [:show, :edit, :update, :destroy]

  # GET /video_channels
  # GET /video_channels.json
  def index
    @video_channels = VideoChannel.all
  end

  # GET /video_channels/1
  # GET /video_channels/1.json
  def show
  end

  # GET /video_channels/new
  def new
    @video_channel = VideoChannel.new
  end

  # GET /video_channels/1/edit
  def edit
  end

  # POST /video_channels
  # POST /video_channels.json
  def create
    @video_channel = VideoChannel.new(video_channel_params)

    respond_to do |format|
      if @video_channel.save
        format.html { redirect_to @video_channel, notice: 'Video channel was successfully created.' }
        format.json { render :show, status: :created, location: @video_channel }
      else
        format.html { render :new }
        format.json { render json: @video_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_channels/1
  # PATCH/PUT /video_channels/1.json
  def update
    respond_to do |format|
      if @video_channel.update(video_channel_params)
        format.html { redirect_to @video_channel, notice: 'Video channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_channel }
      else
        format.html { render :edit }
        format.json { render json: @video_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_channels/1
  # DELETE /video_channels/1.json
  def destroy
    @video_channel.destroy
    respond_to do |format|
      format.html { redirect_to video_channels_url, notice: 'Video channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_channel
      @video_channel = VideoChannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_channel_params
      params.require(:video_channel).permit(:name, :description)
    end
end
