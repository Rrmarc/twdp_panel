class Student < ApplicationRecord
    has_many :teachers, :through => :cohort
    
end
