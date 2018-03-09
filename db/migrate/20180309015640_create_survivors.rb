class CreateSurvivors < ActiveRecord::Migration[5.1]
  def change
    create_table :survivors do |t|
      t.string :name
      t.boolean :gender
      t.date :birth_date
      t.integer :status
      t.float :latitude
      t.float :longitude
      t.integer :reports

      t.timestamps
    end
  end
end
