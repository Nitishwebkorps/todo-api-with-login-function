class CreateList < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :priority, default: 'None'
      t.boolean :completed
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end
