class CreateDegrees < ActiveRecord::Migration[7.1]
  def change
    create_table :degrees do |t|
      t.string :institution
      t.string :degree
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
