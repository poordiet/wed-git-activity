class Course < ApplicationRecord
    has_many :professors, through: :class_sections
    has_many :class_sections
end
