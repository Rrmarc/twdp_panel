class Teacher < ApplicationRecord
    has_many :students, :through => :cohort
    
end
