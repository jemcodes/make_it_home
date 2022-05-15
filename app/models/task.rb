class Task < ApplicationRecord
  include Visible

  belongs_to :room

  validates :body, presence: true
end

