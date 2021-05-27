class Monster < ApplicationRecord
  validates :name, presence: {message: ":You must name the Beast."} 
  validates :hunger, presence: true
  validates :scare_factor, inclusion: 1..100 
end
