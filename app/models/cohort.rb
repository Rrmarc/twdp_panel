class Cohort < ApplicationRecord
    has_and_belongs_to_many :course
    has_and_belongs_to_many :teachers  
    has_and_belongs_to_many :students


end
