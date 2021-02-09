class UserEventDatum < ApplicationRecord
  belongs_to :user

  enum role: %i(user_created user_viewed user_updated user_deleted)
end
