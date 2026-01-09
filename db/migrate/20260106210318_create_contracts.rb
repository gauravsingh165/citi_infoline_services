class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.decimal :cost
      t.text :description

      t.timestamps
    end
  end
end
