class UserDetail < ApplicationRecord

  belongs_to :user
  has_one_attached :photo
  
  validates_format_of :f_name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
  validates :f_name, presence: true

  validates_format_of :l_name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
  validates :l_name, :presence => true

  validates_format_of :postcode, :multiline => true , :with =>  /^([A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\s?[0-9][ABD-HJLNP-UW-Z]{2}|(GIR\ 0AA)|(SAN\ TA1)|(BFPO\ (C\/O\ )?[0-9]{1,4})|((ASCN|BBND|[BFS]IQQ|PCRN|STHL|TDCU|TKCA)\ 1ZZ))$$/i, :message => "is invalid"
  validates :postcode, :presence => true

  validates :city, length: { minimum: 3 }, :presence => true

  validates :street, length: { minimum: 3 }, :presence => true

  validates :door_number, length: { minimum: 1, maximum: 5 }, :presence => true

  validates_format_of :phone, :multiline => true, with: /^(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}$/
  validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 11, :maximum => 15 }
                 

end
 