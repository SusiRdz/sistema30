class AreaLaboral < ActiveRecord::Base
    has_many :personas
    belongs_to :persona, :class_name => 'Persona', :foreign_key => 'jefe_area'
end
