class Wine < ActiveRecord::Base
  belongs_to :menuable, polymorphic: true
  has_many :wine_tastes
  has_many :tastes, through: :wine_tastes
  has_many :comments, as: :commentable
  mount_uploader :image, ImageUploader
end
