class WineTaste < ActiveRecord::Base
  belongs_to :wine
  belongs_to :taste
end
