class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :name
      t.integer :question_id, :null=>false
      t.timestamps
    end
    create_table :answers_bodies, :id=>false do |t|
     t.integer :answer_id, :null=>false
     t.integer :body_id, :null=>false
    end
    add_index :answers_bodies, :answer_id
    add_index :answers_bodies, :body_id
    add_index :answers, :question_id
  end

  def self.down
    drop_table :answers_bodies
    drop_table :answers
  end
end
