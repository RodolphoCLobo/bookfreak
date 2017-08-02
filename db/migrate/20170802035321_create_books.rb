class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.string :edit
      t.string :publishing_company
      t.string :writer
      t.string :image_url
      t.string :summary
    end
  end
end
