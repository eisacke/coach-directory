class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :title
      t.text :attachment

      t.timestamps null: false
    end
  end
end
