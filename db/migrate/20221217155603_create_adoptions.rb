class CreateAdoptions < ActiveRecord::Migration[7.0]
  def change
    create_table :adoptions do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
