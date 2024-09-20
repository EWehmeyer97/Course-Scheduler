class Section < ApplicationRecord
  has_many :applications
  validates :Section_num, presence: true , length: { maximum: 10 }
  validates :Course_num, presence: true , length: { maximum: 10 }
  validates :Section_semester, presence: true , length: { maximum: 10 }
end
