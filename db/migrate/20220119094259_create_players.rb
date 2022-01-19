class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :position
      t.integer :height
      t.integer :weight
      t.string :birth_date
      t.string :colleges
      t.string :draft
      t.string :image_url

      t.timestamps
    end
  end
end
