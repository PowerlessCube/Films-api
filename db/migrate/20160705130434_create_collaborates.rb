class CreateCollaborates < ActiveRecord::Migration
  def change
    create_table :collaborates do |t|
      t.references :actor, index: true, foreign_key: true
      t.references :director, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
