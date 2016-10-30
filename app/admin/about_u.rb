ActiveAdmin.register AboutU do

  permit_params :name, :description, :avatar
    form do |f|
      f.inputs "AboutU Details" do
        f.input :name
        f.input :description, as: :text
        f.input :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
        # Will preview the image when the object is edited
      end
      f.actions
     end

    show do |about_u|
      attributes_table do
        row :name
        row :description
        row :avatar do
           image_tag about_u.avatar.url(:thumb) 
         end
        #row :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))

      end
    end


    index do
      selectable_column
      id_column
        column :name
        column "Description" do |about_u|
          truncate(about_u.description, omision: "...", length: 100)
        end
        column "Image" do |about_u|
         image_tag about_u.avatar.url(:thumb) 
       end
        #column :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
    
      actions
    end


end



