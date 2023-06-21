class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.boolean :draft
      t.string :status

      t.timestamps
    end
  end
end
