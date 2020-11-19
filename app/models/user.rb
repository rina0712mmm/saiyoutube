class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :videos

  with_options presence: true do
    NAME_REGEX = /\A[ぁ-んァ-ン一-龥]+\z/.freeze
    validates :company_name
    validates :first_name, format: { with: NAME_REGEX }
    validates :last_name, format: { with: NAME_REGEX }
    validates :phone_number, format: { with: /\A\d{1,11}\z/ }
  end
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  end
