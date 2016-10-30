ActiveAdmin.register Service do

    permit_params :name, :avatar,:message
      form do |f|
        f.inputs "Service Details" do
          f.input :name
    	  f.input :message , as: :text
          f.input :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
          # Will preview the image when the object is edited
        end
        f.actions
       end

     show do |category|
       attributes_table do
         row :name
         row :message
         row :avatar do
            image_tag category.avatar.url(:thumb) 
          end
         #row :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))

       end
     end

     


      index do
        selectable_column
        id_column
          column :name
          column "message" do |category|
	        truncate(category.message, omision: "...", length: 100)
	      end
          column "Image" do |category|
           image_tag category.avatar.url(:thumb) 
         end
          #column :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
    
        actions
      end


end