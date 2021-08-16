class CreateDevelopers < ActiveRecord::Migration[6.0]
  def change
    create_table :developers do |t|
      t.string :last_name
      t.string :first_name
      t.float :rating
      t.string :skills
      t.string :prog_langage
      t.string :work_zone
      t.integer :price_day
      t.integer :project_done
      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
