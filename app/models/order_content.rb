class OrderContent < ApplicationRecord
  belongs_to :order
  belongs_to :menu
end
