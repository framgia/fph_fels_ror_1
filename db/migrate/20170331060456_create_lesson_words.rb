class CreateLessonWords < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_words do |t|
      t.belongs_to :lesson, index: true, null:false
      # t.references :lesson, foreign_key: true, null:false, on_cascade:delete
      t.references :word, foreign_key: true, null:false
      t.references :word_answer, foreign_key: true
      t.boolean :is_correct

      t.timestamps
    end
  end
end
