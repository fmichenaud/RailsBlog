class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.date :published
      t.text :heading

      t.timestamps
    end
  end
end
