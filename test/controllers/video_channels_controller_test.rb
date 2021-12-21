require 'test_helper'

class VideoChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_channel = video_channels(:one)
  end

  test "should get index" do
    get video_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_video_channel_url
    assert_response :success
  end

  test "should create video_channel" do
    assert_difference('VideoChannel.count') do
      post video_channels_url, params: { video_channel: { description: @video_channel.description, name: @video_channel.name } }
    end

    assert_redirected_to video_channel_url(VideoChannel.last)
  end

  test "should show video_channel" do
    get video_channel_url(@video_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_channel_url(@video_channel)
    assert_response :success
  end

  test "should update video_channel" do
    patch video_channel_url(@video_channel), params: { video_channel: { description: @video_channel.description, name: @video_channel.name } }
    assert_redirected_to video_channel_url(@video_channel)
  end

  test "should destroy video_channel" do
    assert_difference('VideoChannel.count', -1) do
      delete video_channel_url(@video_channel)
    end

    assert_redirected_to video_channels_url
  end
end
