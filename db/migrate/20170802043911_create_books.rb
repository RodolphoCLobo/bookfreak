class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.string :publishing_company
      t.string :writer
      t.string :image_url
      t.text :summary

      t.timestamps
    end
  end
end
