class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.string :name
      # do I need to manually add ID to schema?
      t.references :lines, null: false, foreign_key: true

      t.timestamps
    end

    create_table :lines do |t|
      t.belongs_to :text, index: true, foreign_key: true
      t.timestamps
    end
  end
end
