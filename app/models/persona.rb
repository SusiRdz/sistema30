class Persona < ActiveRecord::Base
    has_many :eventos
    belongs_to :area_laboral
    belongs_to :puesto_laboral
    has_many :personas
    belongs_to :persona, :class_name => 'Persona', :foreign_key => 'jefe_directo'
end
