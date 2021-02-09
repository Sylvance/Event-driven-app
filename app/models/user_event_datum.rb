class UserEventDatum < ApplicationRecord
  belongs_to :user

  enum event_type: %i(user_viewed user_created user_updated user_deleted)
end
