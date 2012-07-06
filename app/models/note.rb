class Note < ActiveRecord::Base

	self.per_page = 3
	validates_presence_of :title, :user_id, :content

	#☺liaison entre notes et users. 1 user à plusieur notes
	belongs_to :user

	def self.searchInTitle(string)
		where('lower(title) like ? or lower(content) like ?', "%#{string.downcase}%", "%#{string.downcase}%")
	end

end
