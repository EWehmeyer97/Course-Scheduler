class Recommand < ApplicationRecord

  validates :Professer_id, presence: true , length: { maximum: 50 }
  validates :Student_name, presence: true , length: { maximum: 50 }
  validates :Reason, length: { maximum: 100 }
end
