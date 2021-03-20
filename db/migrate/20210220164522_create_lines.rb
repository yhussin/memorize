class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.integer :line_number
      t.string :content
      t.references :text, null: false, foreign_key: true

      t.timestamps
    end
  end
end
