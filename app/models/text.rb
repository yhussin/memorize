class Text < ApplicationRecord
  has_many :lines

  validates :name, presence: true
end
