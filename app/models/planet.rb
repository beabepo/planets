class Planet < ApplicationRecord
    validates_presence_of :name, :diameter, :mass
    validates_uniqueness_of :name
   # above is equal to this one -> validates :name, :diameter, :mass, presence: true
     #validates :name, uniqueness: true
end
