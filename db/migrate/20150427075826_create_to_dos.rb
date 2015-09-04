class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :desc
      t.integer :status
      t.datetime :date

      t.timestamps
    end
  end
end
