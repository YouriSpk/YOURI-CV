class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :valid_email_for_registration, on: :create

  private

  def valid_email_for_registration
    unless email == 'youri.soposki@gmail.com'
      errors.add(:base, 'Email is not allowed to register.')
    end
  end
end
