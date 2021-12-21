class ChannelSubscription < ApplicationRecord
  belongs_to :subscriber
  belongs_to :video_channel
end
