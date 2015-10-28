class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, presence: true, uniqueness: true
	before_save :default_values
  	def default_values
    	self.health = 100
    	self.level = 1
  	end
end
