class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :content
      t.belongs_to :category, index: true
      # t.references :category, foreign_key: true, null:false, on_cascade:delete

      t.timestamps
    end
  end
end
