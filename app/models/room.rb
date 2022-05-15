class Room < ApplicationRecord
  include Visible

  has_many :tasks
  
  validates :title, presence: true
end
