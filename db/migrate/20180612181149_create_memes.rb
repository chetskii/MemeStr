class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :url
      t.string :caption
      t.string :created_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
