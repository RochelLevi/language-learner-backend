class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.text :name
      t.integer :language_id

      t.timestamps
    end
  end
end
