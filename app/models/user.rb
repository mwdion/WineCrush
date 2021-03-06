class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :menus
  has_many :wines, as: :menuable
  has_many :user_tastes
  has_many :tastes, through: :user_tastes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def restaurant?
    self.user_type == "Sommelier/Restauranteur"
  end
end
