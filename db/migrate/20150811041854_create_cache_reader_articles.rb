class CreateCacheReaderArticles < ActiveRecord::Migration
  def change
    create_table :cache_reader_articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
