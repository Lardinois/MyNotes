class Note < ActiveRecord::Base

	self.per_page = 3
	
	def self.searchInTitle(string)
		where('lower(title) like ? or lower(content) like ?', "%#{string.downcase}%", "%#{string.downcase}%")
	end

	validates_presence_of :title, :user, :content
	validates_format_of :user, :with => /\A[a-zA-Z]+\z/, :message => "Uniquement des lettres"
end
