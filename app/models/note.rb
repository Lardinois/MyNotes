class Note < ActiveRecord::Base
	def self.searchInTitle(string)
		where(:title => string)
	end
end
