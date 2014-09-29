class Menu < ActiveRecord::Base
  belongs_to :users
  has_many :wines, as: :menuable
end
