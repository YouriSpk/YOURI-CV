class Degree < ApplicationRecord
  belongs_to :user, optional: true

  validates :institution, presence: true
  validates :degree, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  validates :description, presence: true

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
