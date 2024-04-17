class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name

      t.belongs_to :city, index: true #attachement a la table City

      t.timestamps
    end
  end
end
