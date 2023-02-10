class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :date_of_birth
      t.text :bio

      t.timestamps
    end
  end
end
