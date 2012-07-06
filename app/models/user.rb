class User < ActiveRecord::Base

	validates_presence_of :name
	validates_format_of :name, :with => /\A[a-zA-Z]+\z/, :message => "Uniquement des lettres"

	#☺liaison entre notes et users. 1 user à plusieur notes
	has_many :notes

	def to_s
		self.name
	end
end
