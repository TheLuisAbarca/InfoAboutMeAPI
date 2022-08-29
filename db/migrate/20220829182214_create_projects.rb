class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :feature_imageM
      t.integer :feature_imageD
      t.integer :feature_imageWorkM
      t.integer :feature_imageWorkD
      t.text :linkLive
      t.text :link2Source

      t.timestamps
    end
  end
end
