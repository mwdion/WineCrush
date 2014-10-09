class Wine < ActiveRecord::Base
  belongs_to :menuable, polymorphic: true
  has_many :wine_tastes
  has_many :tastes, through: :wine_tastes
  has_many :comments, as: :commentable
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
