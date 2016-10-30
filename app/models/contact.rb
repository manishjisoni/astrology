class Contact < ActiveRecord::Base
	validates :name, :email, :phone, :message, :presence => true
end
