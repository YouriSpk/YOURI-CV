class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :valid_email_for_registration

  private

  def valid_email_for_registration
    unless email == 'youri.soposki@gmail.com'
      errors.add(:email, 'is not allowed to register.')
    end
  end
end
