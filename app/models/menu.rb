class Menu < ApplicationRecord
  belongs_to :section
  has_many :OrderContents
end
