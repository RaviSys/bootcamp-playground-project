class Subscriber < ApplicationRecord
  has_many :channel_subscriptions
  has_many :video_channels, through: :channel_subscriptions
end
