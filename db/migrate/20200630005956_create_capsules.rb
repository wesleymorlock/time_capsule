class CreateCapsules < ActiveRecord::Migration[6.0]
  def change
    create_table :capsules do |t|
      t.string :title
      t.date :launch_date

      t.timestamps
    end
  end
end
