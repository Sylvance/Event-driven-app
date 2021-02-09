class User < ApplicationRecord
  has_many :user_event_data, dependent: :destroy
end
