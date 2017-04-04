class CreateWordAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :word_answers do |t|
      t.string :content
      t.belongs_to :word, index: true
      # t.references :word, foreign_key: true, null:false, on_cascade:delete

      t.timestamps
    end
  end
end
