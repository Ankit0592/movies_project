class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :description
      t.references :movie 
      t.timestamps
    end
  end
end
