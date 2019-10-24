class Professor < ApplicationRecord
  belongs_to :office
  has_many :class_sections
  has_many :courses, through: :class_sections
end
