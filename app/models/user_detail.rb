class UserDetail < ApplicationRecord
  # has_many :bookings
  # has_many :reviews, through: :bookings
  belongs_to :user

# include PgSearch::Model
#     pg_search_scope :search_by_location,
#     against: [ :location, :cuisines, :hourly_rate ],
#     using: {
#       tsearch: { prefix: true }
#     }

  validates :f_name, :l_name, :address, :postcode, presence: true
  # validates :phone, numericality: { only_integer: true }
  validates :address, length: { minimum: 5 }

  has_one_attached :photo



  # def average_review
  #   if self.reviews.empty?
  #     ""
  #   else
  #     self.reviews.pluck(:rating).sum / self.reviews.length.to_f
  #   end
  # end
end
