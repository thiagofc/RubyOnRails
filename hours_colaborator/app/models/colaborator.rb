class Colaborator < ActiveRecord::Base
	belongs_to :manager, :class_name  => 'Colaborator'
	has_many :subordinates, :class_name  => 'Colaborator', :foreign_key => 'manager_id'
	has_many :hours_registrations
	belongs_to :user_app
end
