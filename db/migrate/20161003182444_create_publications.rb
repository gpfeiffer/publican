class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :author
      t.string :title
      t.text :data
      t.string :isbn
      t.string :url
      t.string :page_one_url
      t.string :doi
      t.string :mr
      t.string :zbl
      t.string :owp
      t.string :arxiv

      t.timestamps null: false
    end
  end
end
