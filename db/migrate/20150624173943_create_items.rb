class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name, null: false
    	t.float :price, default: 0
    	t.text :description
    	t.integer :category_id
      t.timestamps null: false
    end
  end
end
