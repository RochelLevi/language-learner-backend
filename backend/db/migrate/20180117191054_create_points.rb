class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :total
      t.integer :user_id
      t.integer :language_id

      t.timestamps
    end
  end
end
