
ActiveAdmin.register Product do

  permit_params :name,:avatar,:category_id,:description
    form do |f|
      f.inputs "Product Details" do
        f.input :name
        f.input :category_id, :label => "Category", as: :select, collection: Category.all,include_blank: false
        f.input :description, as: :text 
        f.input :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
        # Will preview the image when the object is edited
      end
      f.actions
     end

    show do |product|
      attributes_table do
        row :name
        row :category_id
        row :description
        row :avatar do
           image_tag product.avatar.url(:thumb) 
         end
        #row :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))

      end
    end


    index do
      selectable_column
      id_column
        column :name
        column :category_id
        column "Description" do |product|
          truncate(product.description, omision: "...", length: 100)
        end
        column "Image" do |product|
         image_tag product.avatar.url(:thumb) 
       end
        #column :avatar, :as => :file, :hint => f.image_tag(f.object.avatar.url(:medium))
    
      actions
    end


end



