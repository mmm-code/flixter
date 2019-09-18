class CreateSquad < ActiveRecord::Migration[5.2]
  def change
    create_table :squads do |t|
      t.string :image_name
      t.string :title
      t.string :profession
    end
  end
end
