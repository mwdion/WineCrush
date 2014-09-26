class Wine < ActiveRecord::Base
  belongs_to :menu
  has_many :tastes, through: :wine_tastes
end
