class Recipe < ActiveRecord::Base
belongs_to :cuisine
belongs_to :food_type
belongs_to :food_preference
DIFFICULTY=%w(Easy Medium Hard)
end
