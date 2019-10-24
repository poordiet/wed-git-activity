class Course < ApplicationRecord
  
    has_many :class_sections
    has_many :professors, through: :class_sections
end
