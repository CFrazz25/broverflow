class CreateVotes < ActiveRecord::Migration
  def change
      create_table :votes do |t|
        t.integer :user_id, {null: false}
        t.integer :votable_id, {null: false}
        t.string :votable_type, {null: false}
        t.integer :value, default: 0
        t.timestamps null: false
      end
  end
end
