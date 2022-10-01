class Client < ApplicationRecord
    has_many :gyms, through: :memberships
    has_many :memberships 
    validates :name, presence: true 
    validates :age, presence: true 
end
