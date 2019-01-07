class Cohort < ApplicationRecord
    has_many :teachers
    has_many :students
    has_and_belongs_to_many :courses

    
end
