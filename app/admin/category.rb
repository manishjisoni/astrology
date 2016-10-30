ActiveAdmin.register Category do

  permit_params :name,:avatar
    form do |f|
      f.inputs "Category Details" do
        f.input :name
        f.input :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
        # Will preview the image when the object is edited
      end
      f.actions
     end

    show do |category|
      attributes_table do
        row :name
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
        column "Image" do |category|
         image_tag category.avatar.url(:thumb) 
       end
        #column :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
    
      actions
    end


end