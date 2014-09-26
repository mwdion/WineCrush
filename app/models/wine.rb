class Wine < ActiveRecord::Base
  belongs_to :menuable, polymorphic: true
  has_many :tastes, through: :wine_tastes
end
