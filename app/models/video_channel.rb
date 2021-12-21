class VideoChannel < ApplicationRecord
  has_many :channel_subscriptions
  has_many :subscribers, through: :channel_subscriptions
end
