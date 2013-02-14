class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.boolean :unreviewed

      t.timestamps
    end
  end
end
