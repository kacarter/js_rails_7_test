class CreateAutocompleteThings < ActiveRecord::Migration[7.0]
  def change
    create_table :autocomplete_things do |t|
      t.string :name
      t.string :random_field

      t.timestamps
    end
  end
end
