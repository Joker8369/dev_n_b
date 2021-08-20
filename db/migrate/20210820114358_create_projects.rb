class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :developer, null: false, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
