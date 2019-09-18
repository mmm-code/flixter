class CreateAlumni < ActiveRecord::Migration[5.2]
  def change
    create_table :alumnis do |t|
      t.string :image_name
      t.string :comment
    end
  end
end
