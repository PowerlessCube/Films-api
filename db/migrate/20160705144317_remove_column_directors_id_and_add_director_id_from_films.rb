class RemoveColumnDirectorsIdAndAddDirectorIdFromFilms < ActiveRecord::Migration
  def change
    change_table :films do |t|
      t.remove :directors_id
      t.references :director, index: true, foreign_key: true
    end
  end
end
