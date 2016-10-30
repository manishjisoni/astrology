class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
