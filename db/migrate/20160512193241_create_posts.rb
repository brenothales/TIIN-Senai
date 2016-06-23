class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :body
      t.string :autor
      t.string :imagens
      t.string :tag

      t.timestamps null: false
    end
  end
end
