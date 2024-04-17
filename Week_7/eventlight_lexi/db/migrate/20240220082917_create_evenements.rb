class CreateEvenements < ActiveRecord::Migration[7.1]
  def change
    create_table :evenements do |t|
      t.datetime :start_date
      t.integer :duration
      t.string :title
      t.text :description
      t.integer :price
      t.string :location

      t.references :admin, index: true

      t.timestamps
    end
  end
end
