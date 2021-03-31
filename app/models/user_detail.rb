class UserDetail < ApplicationRecord

  belongs_to :user

  validates :f_name, :l_name, :address, :postcode, presence: true
  # validates :phone, numericality: { only_integer: true }
  validates :address, length: { minimum: 5 }

  has_one_attached :photo

end
