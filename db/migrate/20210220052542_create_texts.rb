class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.string :name
      # do I need to manually add an ID?

      t.timestamps
    end
  end
end