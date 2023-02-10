class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, unique: true
      t.text :short_description
      t.string :trailer_url
      t.text :storyline
      t.date :release_date
      t.string :languages
      t.string :country_of_origin
      t.string :production_companies

      t.timestamps
    end
  end
end
