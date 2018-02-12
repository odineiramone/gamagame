class CreateGameStates < ActiveRecord::Migration[5.1]
  def change
    create_table :game_states do |t|
      t.string :user_identifier
      t.integer :answers
      t.integer :hits
      t.timestamps
    end
  end
end
