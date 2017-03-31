class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.integer :result
      t.belongs_to :user, index: true, null:false
      # t.references :user, foreign_key: true, null:false, on_cascade:delete
      t.references :category, foreign_key: true, null:false

      t.timestamps
    end
  end
end
