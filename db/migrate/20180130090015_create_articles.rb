class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title # Titre de l'article
      t.date :published # Date de publication 
      t.text :heading # Chapo de l'article
      t.string :image # Image de l'article
      add_column(:users, :name, :string) # Join column from users (giving name)

      t.timestamps
    end
  end
end
