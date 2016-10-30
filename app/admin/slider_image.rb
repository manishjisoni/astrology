class SliderImage < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end



ActiveAdmin.register SliderImage do

  permit_params :avatar
    form do |f|
      f.inputs "SliderImage Details" do
        f.input :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
        # Will preview the image when the object is edited
      end
      f.actions
     end

    show do |slider_image|
      attributes_table do
        row :avatar do
           image_tag slider_image.avatar.url(:thumb) 
         end
        #row :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))

      end
    end


    index do
      selectable_column
      id_column
        column "Image" do |slider_image|
         image_tag slider_image.avatar.url(:thumb) 
       end
        #column :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
    
      actions
    end


end



