class Taste < ActiveRecord::Base
  has_many :wine_tastes
  has_many :wines, through: :wine_tastes
end
