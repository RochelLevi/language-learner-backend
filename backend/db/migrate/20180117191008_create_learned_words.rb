class CreateLearnedWords < ActiveRecord::Migration[5.1]
  def change
    create_table :learned_words do |t|
      t.integer :user_id
      t.integer :word_id

      t.timestamps
    end
  end
end
