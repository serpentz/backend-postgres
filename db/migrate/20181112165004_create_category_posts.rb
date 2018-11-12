class CreateCategoryPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :category_posts do |t|
    	t.references :category
    	t.references :post
      t.timestamps
    end
  end
end
