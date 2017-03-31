class CreateWordAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :word_answers do |t|
      t.string :content, null:false
      t.belongs_to :word, index: true, null:false
      # t.references :word, foreign_key: true, null:false, on_cascade:delete

      t.timestamps
    end
  end
end
