class Zoo < ApplicationRecord
  has_many :animals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
