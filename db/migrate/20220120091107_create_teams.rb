class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :name
      t.string :abbreviation
      t.string :image_url

      t.timestamps
    end
  end
end
