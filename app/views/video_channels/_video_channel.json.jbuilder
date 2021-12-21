json.extract! video_channel, :id, :name, :description, :created_at, :updated_at
json.url video_channel_url(video_channel, format: :json)
