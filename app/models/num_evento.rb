class NumEvento < ActiveRecord::Base
    has_many :eventos
    has_many :sucesos
    has_many :reunions
end
