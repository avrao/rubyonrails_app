class CreateLatestNews < ActiveRecord::Migration
  def change
    create_table :latest_news do |t|
      t.string :title
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
