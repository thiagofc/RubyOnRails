class Colaborator < ActiveRecord::Base
	belongs_to :manager
	has_many :hours_registrations
end
