class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :origin_url
      t.string :shorten_url
      t.boolean :generated

      t.timestamps
    end
  end
end
