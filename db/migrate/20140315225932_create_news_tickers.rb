class CreateNewsTickers < ActiveRecord::Migration
  def change
    create_table :news_tickers do |t|
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
