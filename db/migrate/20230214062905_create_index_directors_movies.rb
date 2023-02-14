class CreateIndexDirectorsMovies < ActiveRecord::Migration[6.1]
  def change
    create_join_table :directors, :movies do |t|
      t.index :director_id
      t.index :movie_id
    end
  end
end
