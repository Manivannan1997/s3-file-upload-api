class CreateImageFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :image_files do |t|
      t.string :file_name
      t.timestamps
    end
  end
end
