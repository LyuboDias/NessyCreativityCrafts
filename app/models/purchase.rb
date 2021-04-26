class Purchase < ApplicationRecord
  # after_create :send_payment_email

  belongs_to :user
  belongs_to :product

  monetize :amount_cents

  # private 

  # def send_payment_email
  #   UserMailer.payment(self.user).deliver_now
  # end
end
