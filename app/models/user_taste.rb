class UserTaste < ActiveRecord::Base
  belongs_to :user
  belongs_to :taste
end
