require "application_system_test_case"

class VideoChannelsTest < ApplicationSystemTestCase
  setup do
    @video_channel = video_channels(:one)
  end

  test "visiting the index" do
    visit video_channels_url
    assert_selector "h1", text: "Video Channels"
  end

  test "creating a Video channel" do
    visit video_channels_url
    click_on "New Video Channel"

    fill_in "Description", with: @video_channel.description
    fill_in "Name", with: @video_channel.name
    click_on "Create Video channel"

    assert_text "Video channel was successfully created"
    click_on "Back"
  end

  test "updating a Video channel" do
    visit video_channels_url
    click_on "Edit", match: :first

    fill_in "Description", with: @video_channel.description
    fill_in "Name", with: @video_channel.name
    click_on "Update Video channel"

    assert_text "Video channel was successfully updated"
    click_on "Back"
  end

  test "destroying a Video channel" do
    visit video_channels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video channel was successfully destroyed"
  end
end
