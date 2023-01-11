class CreateDynamicThings < ActiveRecord::Migration[7.0]
  def change
    create_table :dynamic_things do |t|
      t.string :name
      t.boolean :active
      t.date :expiration_date

      t.timestamps
    end
  end
end
