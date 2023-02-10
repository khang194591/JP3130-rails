class CreateCategoriesMoviesJoinTable < ActiveRecord::Migration[6.1]
  def change
    # If you want to add an index for faster querying through this join:
    create_join_table :categories, :movies do |t|
      t.index :category_id
      t.index :movie_id
    end
  end

end
