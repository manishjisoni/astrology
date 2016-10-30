class AboutU < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    before_save :check_about_u 

  # def check_about_u
  #   if AboutU.exists? 
  #   	about=AboutU.first
  #   	about.update_attributes(name: self.name, description: self.description)
  #   end
  # end

  # def check_about_u
  #   errors.add(:name, "You can create About U only one time") if AboutU.exists?
  # end 
  validates :name, :description, :avatar, :presence => true
end


