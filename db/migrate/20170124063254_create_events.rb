class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :teamName
      t.text :coach
      t.boolean :is_west

      t.timestamps
    end
  end
end
