class ChangeFilms < ActiveRecord::Migration

  def change
    change_table :films do |t|
      t.remove :actor_id
      t.references :directors, index: true, foreign_key: true
    end
  end

end
