class Note < ActiveRecord::Base
	def self.searchInTitle(string)
		where(:title => string)
	end

	validates_presence_of :title, :user, :content
	validates_format_of :user, :with => /\A[a-zA-Z]+\z/, :message => "Uniquement des lettres"
end
