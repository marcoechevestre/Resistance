class Survivor < ApplicationRecord
    has_many :inventories, dependent: :destroy

    validates_presence_of :name, :gender, :birth_date, :status, :latitude, :longitude, :reports

end
