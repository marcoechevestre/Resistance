class Inventory < ApplicationRecord
  belongs_to :survivor

  validates_presence_of :owner, :name_item, :quality, :type, :points, :survivor_id
end
