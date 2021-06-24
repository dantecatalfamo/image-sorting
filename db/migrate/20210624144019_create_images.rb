class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :path
      t.integer :rating
      t.integer :matches
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
