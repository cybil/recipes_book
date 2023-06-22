class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :draft, null: false, default: true
      t.string :status, null: false, default: 'pending'

      t.timestamps
    end
  end
end
