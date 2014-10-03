class Taste < ActiveRecord::Base
  has_many :wine_tastes
  has_many :wines, through: :wine_tastes
  has_many :user_tastes
  has_many :users, through: :user_tastes
end
