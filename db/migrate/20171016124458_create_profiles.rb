class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.date :birthdate
      t.string :mobile
      t.string :mail
      t.string :job
      t.string :company

      t.timestamps
    end
  end
end
