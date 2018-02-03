class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title # Titre de l'article
      t.date :published # Date de publication 
      t.text :heading # Chapo de l'article
      t.text :text #Texte de l'article
      t.string :image # Image de l'article
      t.timestamps
    end
  end
end
