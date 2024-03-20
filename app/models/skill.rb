class Skill < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :icon

  validates :name, presence: true
  validates :level, inclusion: { in: %w(beginner intermediate advanced expert) }
  validates :section, inclusion: { in: %w(soft hard) }
end
