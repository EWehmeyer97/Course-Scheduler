class Application < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  belongs_to :section, foreign_key: "section_id"
  validates :Student_name, presence: true , length: { maximum: 50 }
  validates :Email, presence: true, length: { maximum: 250 },
            format: { with: VALID_EMAIL_REGEX}
  after_initialize :init
  def init
    self.Status ||='pending'
  end
end