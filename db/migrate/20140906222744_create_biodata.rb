class CreateBiodatas < ActiveRecord::Migration
  def change
    create_table :biodatas do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.text :about

      t.timestamps
    end
  end
end
