class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :creepers do |t|
      t.string :name
      t.integer :scare_factor
      t.string :desire
    end
  end
end