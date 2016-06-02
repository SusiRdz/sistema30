class Evento < ActiveRecord::Base
    belongs_to :num_evento
    belongs_to :persona
end
